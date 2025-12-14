(ensure-package 'tsx-mode)

(defun configure-tsx-mode ()
  (setq js-indent-level 2)
  (setq tsx-indent-level 2)
  (setq sgml-basic-offset 2)
  (setq js-switch-indent-offset 4)
  (setq eldoc-idle-delay 0.75)
  (setq company-idle-delay 0.75)
  (setq flymake-no-changes-timeout 0.5)
  (yafolding-mode)
  ;; (eglot-ensure)
  )

(add-hook 'tsx-mode-hook 'configure-tsx-mode)

(provide 'init-tsx-mode)
