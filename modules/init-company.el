(ensure-package 'company)

(define-key custom-keymap  (kbd "M-/") 'company-complete)
(global-company-mode)
(setq-default company-idle-delay 0.05)
(setq-default company-dabbrev-downcase nil)

(provide 'init-company)
