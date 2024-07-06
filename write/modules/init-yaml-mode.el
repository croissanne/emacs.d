(ensure-package 'yaml-mode)

(defun configure-yaml-mode ()
  (setq fill-column 100)
  (yafolding-mode)
  ('eglot-ensure))
(add-hook 'yaml-mode-hook 'configure-yaml-mode)

(provide 'init-yaml-mode)
