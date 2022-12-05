(ensure-package 'rjsx-mode)

(defun configure-rjsx-mode ()
  (setq js-indent-level 2)
  (setq sgml-basic-offset 2)
  (setq js-switch-indent-offset 4))

(add-hook 'rjsx-mode-hook 'configure-rjsx-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . rjsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . rjsx-mode))

(provide 'init-rjsx-mode)
