(ensure-package 'markdown-mode)
(ensure-package 'markdown-preview-mode)

(defun configure-markdown-mode ()
  (visual-line-mode)
  (auto-fill-mode)
  (setq fill-column 100))
(add-hook 'markdown-mode-hook 'configure-markdown-mode)

(provide 'init-markdown-mode)
