(ensure-package 'company)
(ensure-package 'company-c-headers)

(define-key custom-keymap  (kbd "M-/") 'company-complete)

(global-company-mode)
(setq-default company-idle-delay 0.05)
(delete 'company-clang company-backends)
(add-to-list 'company-backends 'company-c-headers)

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
