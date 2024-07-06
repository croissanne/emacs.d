(ensure-package 'typescript-mode)

(defun configure-typescript-mode ()
  (setq js-indent-level 2)
  (setq typescript-indent-level 2)
  (setq sgml-basic-offset 2)
  (setq js-switch-indent-offset 4)
  (setq eldoc-idle-delay 0.75)
  (setq company-idle-delay 0.75)
  (setq flymake-no-changes-timeout 0.5)
  ('eglot-ensure))

(add-hook 'typescript-mode-hook 'configure-typescript-mode)

(provide 'init-typescript-mode)
