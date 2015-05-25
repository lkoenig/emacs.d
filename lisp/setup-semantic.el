(global-semanticdb-minor-mode 1)
;;(global-semantic-idle-scheduler-mode 1)
(global-semantic-idle-summary-mode 1) ;; summary in the minibuffer
(global-semantic-stickyfunc-mode 1)
(setq-local eldoc-documentation-function #'ggtags-eldoc-function) ;; give it a try to see how the function interface are defined

(define-key semantic-mode-map (kbd "C-x C-.") 'semantic-ia-fast-jump)
(semantic-mode 1)
(provide 'setup-semantic)
