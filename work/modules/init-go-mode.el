(ensure-package 'go-mode)

(defun configure-go-mode ()
  (yafolding-mode)
  (eglot-ensure))
(add-hook 'go-mode-hook 'configure-go-mode)

(provide 'init-go-mode)
