(ensure-package 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(provide 'init-js-mode)
