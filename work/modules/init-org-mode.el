(ensure-package 'org-side-tree)

(setq auto-save-visited-interval 1)

(defun configure-org-mode ()
  (setq fill-column 100)
  (visual-line-mode)
  (buffer-face-set '(:family "Iosveka Etaoile" :height 140 :width))
  (auto-save-visited-mode))
(add-hook 'org-mode-hook 'configure-org-mode)

(define-key custom-keymap (kbd "C-x C-a") 'org-table-align)
(define-key custom-keymap (kbd "C-x C-c") 'org-table-create-or-convert-from-region)
(define-key custom-keymap (kbd "C-x C-x C-t") 'org-side-tree-toggle)

(defun variable-font ()
  (interactive)
  (buffer-face-set '(:family "Iosveka Etaoile" :height 140 :width)))
(define-key custom-keymap (kbd "C-x f v") 'variable-font)

(defun mono-font ()
  (interactive)
  (buffer-face-set nil))
(define-key custom-keymap (kbd "C-x f m") 'mono-font)

(provide 'init-org-mode)

