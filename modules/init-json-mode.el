(ensure-package 'json-mode)

(setq js-indent-level 2)
(setq sgml-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(provide 'init-json-mode)
