(ensure-package 'gxref)

(add-to-list 'xref-backend-functions 'gxref-xref-backend)

(provide 'init-xref)
