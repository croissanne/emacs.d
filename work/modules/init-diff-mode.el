;; diff-mode in commit msg
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG" . diff-mode))

(defun configure-diff-mode ()
  (setq-default fill-column 72)
  (auto-fill-mode 1))
(add-hook 'diff-mode-hook 'configure-diff-mode)

(provide 'init-diff-mode)
