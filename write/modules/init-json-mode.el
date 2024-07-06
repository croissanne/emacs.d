(ensure-package 'json-mode)
(ensure-package 'yafolding)

(defun configure-json-mode ()
  (make-local-variable 'js-indent-level)
  (setq js-indent-level 2)
  (yafolding-mode)
  (eglot-ensure))

(add-hook 'json-mode-hook 'configure-json-mode)
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
;; (add-to-list 'auto-mode-alist '("\\.json\\'" . yafolding-mode))

(provide 'init-json-mode)
