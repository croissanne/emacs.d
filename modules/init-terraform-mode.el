(ensure-package 'terraform-mode)
(ensure-package 'terraform-doc)

(defun configure-terraform-mode ()
  ;; (terraform-format-on-save-mode)
  (setq terraform--resource-type-face '(t :foreground "steel blue"))
  (setq terraform--resource-name-face '(t :foreground "forest green"))
  )
(add-hook 'terraform-mode-hook 'configure-terraform-mode)

(provide 'init-terraform-mode)
