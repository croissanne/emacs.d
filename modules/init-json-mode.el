(ensure-package 'json-mode)

(defun configure-json-mode ()
  (make-local-variable 'js-indent-level)
  (setq js-indent-level 2))

(add-hook 'json-mode-hook 'configure-json-mode)
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(provide 'init-json-mode)
