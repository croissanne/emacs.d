(ensure-package 'company)
(ensure-package 'company-c-headers)
(ensure-package 'company-go)
(ensure-package 'company-anaconda)
(ensure-package 'company-ansible)
(ensure-package 'company-emojify)
(ensure-package 'company-shell)
(ensure-package 'company-terraform)
(ensure-package 'company-web)
(ensure-package 'company-bibtex)


(define-key custom-keymap  (kbd "M-/") 'company-complete)

(global-company-mode)
(setq-default company-idle-delay 0.05)
(setq-default company-dabbrev-downcase nil)
(delete 'company-clang company-backends)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-bibtex)

;; Example .dir-locals.el for qt5 projects for headers
;; ((c++-mode
;;   (eval add-to-list 'company-c-headers-path-system
;;         "/usr/include/x86_64-linux-gnu/qt5/QtCore")
;;   (eval add-to-list 'company-c-headers-path-system
;;         "/usr/include/x86_64-linux-gnu/qt5/QtNetwork")
;;     (eval add-to-list 'company-c-headers-path-system
;;         "/usr/include/x86_64-linux-gnu/qt5/QtGui")
;;   (eval add-to-list 'company-c-headers-path-system
;;         "/usr/include/x86_64-linux-gnu/qt5/QtWidgets")
;;   (eval add-to-list 'company-c-headers-path-system
;;         "/usr/include/x86_64-linux-gnu/qt5/QtTest")))

(provide 'init-company)
