(ensure-package 'rjsx-mode)

(setq js-indent-level 4)
(setq sgml-basic-offset 4)

(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . rjsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . rjsx-mode))

(provide 'init-js-mode)
