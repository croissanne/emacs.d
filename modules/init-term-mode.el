(defun configure-term-mode ()
  (define-key custom-keymap (kbd "C-c C-c") nil))

(eval-after-load "term-mode" 'configure-term-mode)

(provide 'init-term-mode)
