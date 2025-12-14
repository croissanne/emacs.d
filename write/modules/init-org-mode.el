(ensure-package 'org-side-tree)
(ensure-package 'adaptive-wrap)

(setq-default auto-save-visited-interval 1)
(setq-default org-export-with-smart-quotes t)
(setq-default adaptive-wrap-extra-indent 1)

(defun configure-org-mode ()
  (visual-line-mode)
  (buffer-face-set '(:family "IBM Plex Serif Light" :height 240))
  (set-face-attribute 'italic nil :slant 'italic :underline 'unspecified)
  (writeroom-mode)
  (flyspell-mode)
  (auto-save-visited-mode)
  (adaptive-wrap-prefix-mode))
(add-hook 'org-mode-hook 'configure-org-mode)

(define-key custom-keymap (kbd "C-x C-a") 'org-table-align)
(define-key custom-keymap (kbd "C-x C-c") 'org-table-create-or-convert-from-region)
(define-key custom-keymap (kbd "C-x C-x C-t") 'org-side-tree-toggle)

(defun variable-font ()
  (interactive)
  (buffer-face-set '(:family "IBM Plex Serif Light" :height 240))
  (set-face-attribute 'italic nil :slant 'italic :underline 'unspecified))
(define-key custom-keymap (kbd "C-x f v") 'variable-font)

(defun mono-font ()
  (interactive)
  (buffer-face-set nil))
(define-key custom-keymap (kbd "C-x f m") 'mono-font)

(provide 'init-org-mode)
