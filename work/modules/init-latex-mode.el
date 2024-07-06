(defun configure-latex-mode ()
  (visual-line-mode)
  (auto-fill-mode)
  (setq fill-column 100)
  ('eglot-ensure))
(add-hook 'latex-mode-hook 'configure-latex-mode)

(provide 'init-latex-mode)
