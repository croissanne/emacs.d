
(defun configure-org-mode ()
  (visual-line-mode))
(add-hook 'org-mode-hook 'configure-org-mode)

(provide 'init-org-mode)
