(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)



;;;e(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

;;; add the .emacs.d to the path
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'my-c-style)

(require 'setup-helm)
(require 'setup-helm-gtags)

; (require 'setup-ggtags)

(require 'cedet)
(require 'semantic)
(require 'setup-semantic)

(tool-bar-mode -1)

;;; Linum
(global-linum-mode 1)
(add-hook 'sh-mode-hook '(lambda () (linum-on)))
(add-hook 'cmake-mode-hook '(lambda () (linum-on)))
(add-hook 'c-mode-hook '(lambda () (linum-on)))
(add-hook 'cpp-mode-hook '(lambda () (linum-on)))
(add-hook 'python-mode-hook '(lambda () (linum-on)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
