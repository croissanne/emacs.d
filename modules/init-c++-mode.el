(ensure-package 'modern-cpp-font-lock)

(defun custom-c++-hook ()
  (modern-c++-font-lock-mode))
(add-hook 'c++-mode-hook 'custom-c++-hook)

;; force header files in c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-c++-mode)
