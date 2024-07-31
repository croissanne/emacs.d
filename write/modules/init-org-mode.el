
(defun configure-org-mode ()
  (visual-line-mode)
  (setq buffer-face-mode-face '(:family "Iosveka Etaoile" :height 140 :width))
  (buffer-face-mode)
  (writeroom-mode))
(add-hook 'org-mode-hook 'configure-org-mode)

(provide 'init-org-mode)
