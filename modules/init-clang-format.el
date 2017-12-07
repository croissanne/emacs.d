(ensure-package 'clang-format)

(define-key custom-keymap (kbd "C-c ,") 'clang-format-buffer)
(define-key custom-keymap (kbd "C-c C-,") 'clang-format-region)

(provide 'init-clang-format)
