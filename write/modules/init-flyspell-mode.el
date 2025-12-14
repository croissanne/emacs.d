(setq-default ispell-program-name "hunspell")
(setq-default ispell-dictionary "en_GB")

(add-to-list 'company-backends 'company-ispell)
(define-key custom-keymap (kbd "C-x C-i") 'flyspell-mode)

(provide 'init-flyspell-mode)
