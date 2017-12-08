(ensure-package 'avy)

(define-key custom-keymap (kbd "C-c C-j") 'avy-goto-subword-1)
(define-key custom-keymap (kbd "C-c j") 'avy-goto-subword-1)
(define-key custom-keymap (kbd "C-c C-l") 'avy-goto-line)
(define-key custom-keymap (kbd "C-c l") 'avy-goto-line)

(provide 'init-avy-mode)
