(defun configure-python-mode ()
  (yafolding-mode)
  (eglot-ensure))
(add-hook 'python-mode-hook 'configure-python-mode)

(provide 'init-python-mode)
