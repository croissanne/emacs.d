
(defun configure-org-mode ()
  (visual-line-mode)
  (writeroom-mode))
(add-hook 'org-mode-hook 'configure-org-mode)

(provide 'init-org-mode)
