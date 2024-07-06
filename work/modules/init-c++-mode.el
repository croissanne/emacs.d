(ensure-package 'modern-cpp-font-lock)

(defun configure-c++-mode ()
  (modern-c++-font-lock-mode))
(add-hook 'c++-mode-hook 'configure-c++-mode)

;; force header files in c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-c++-mode)
