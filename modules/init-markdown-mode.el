(ensure-package 'markdown-mode)
(ensure-package 'markdown-preview-mode)

(defun custom-markdown-mode-hook ()
  (visual-line-mode))
(add-hook 'markdown-mode-hook 'custom-markdown-mode-hook)

(provide 'init-markdown-mode)
