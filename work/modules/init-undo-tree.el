(ensure-package 'undo-tree)

(global-undo-tree-mode)
(setq-default undo-tree-auto-save-history t)

(provide 'init-undo-tree)
