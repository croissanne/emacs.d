(ensure-package 'company)

(define-key custom-keymap  (kbd "M-/") 'company-complete)

(global-company-mode)
(setq company-idle-delay 0.05)
(setq company-backends (delete 'company-clang company-backends))

(provide 'init-company)
