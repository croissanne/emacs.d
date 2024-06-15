(ensure-package 'typescript-mode)

(defun configure-typescript-mode ()
  (setq js-indent-level 2)
  (setq typescript-indent-level 2)
  (setq sgml-basic-offset 2)
  (setq js-switch-indent-offset 4)
  ('eglot-ensure))

(add-hook 'typescript-mode-hook 'configure-typescript-mode)

(provide 'init-typescript-mode)
