(ensure-package 'go-mode)

(defun configure-go-mode ()
  (yafolding-mode)
  (eglot-ensure)
  (setq fill-column 100))
(add-hook 'go-mode-hook 'configure-go-mode)

(provide 'init-go-mode)
