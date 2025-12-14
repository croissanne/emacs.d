(ensure-package 'rust-mode)

(defun configure-rust-mode ()
  (eglot-ensure))
(add-hook 'rust-mode-hook 'configure-rust-mode)

(provide 'init-rust-mode)
