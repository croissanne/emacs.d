(ensure-package 'avy)

(define-key custom-keymap (kbd "C-c j") 'avy-goto-line)
(define-key custom-keymap (kbd "C-c C-j") 'avy-goto-line)

(define-key custom-keymap (kbd "C-c k") 'avy-goto-subword-1)
(define-key custom-keymap (kbd "C-c C-k") 'avy-goto-word-1)

(define-key custom-keymap (kbd "C-c l") 'avy-goto-char-in-line)
(define-key custom-keymap (kbd "C-c C-l") 'avy-goto-char-in-line)

(provide 'init-avy-mode)
