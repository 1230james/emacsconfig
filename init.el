;; Load stuff
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/cc-mode")'
(require 'cc-mode)

;; not sure but hey lets not touch it
(setq c-default-style '(("c++" . "linux")
                        (java-mode . "java")
                        (awk-mode . "awk")
                        (other . "gnu")))

;; Line numbers
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; 4-space indents
(setq c-basic-offset 4)
(setq sgml-basic-offset 4)

;; Green comments
(set-face-foreground 'font-lock-comment-face "green")

;; CC mode init hook - run stuff on launch when using cc-mode language
(defun my-cc-init-hook ()
  "Initialization hook for CC-mode runs before any other hooks."
  
  ;; Stuff i copied from somewhere; don't touch
  (setq c-doc-comment-style
	'((java-mode . javadoc)
	  (pike-mode . autodoc)
	  (c-mode    . javadoc)
	  (c++-mode  . javadoc)))
  (set-face-foreground 'font-lock-doc-face
		       (face-foreground font-lock-comment-face)))
(add-hook 'c-initialization-hook 'my-cc-init-hook)

;; Add Lua mode
(require 'lua-mode)

;; Column indicator
(require 'fill-column-indicator)
(define-globalized-minor-mode fci-mode-global fci-mode
  (lambda () (fci-mode 1)))
(fci-mode-global 1)

;; Spaces for tabs
(setq-default indent-tabs-mode nil)

;; Emacs theme or something
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
