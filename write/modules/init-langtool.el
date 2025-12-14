(ensure-package 'langtool)

(setq langtool-language-tool-jar "/home/sanne/.local/share/LanguageTool-6.4/languagetool-commandline.jar")
(require 'langtool)

(define-key custom-keymap (kbd "C-x C-b") 'ibuffer)

(define-key custom-keymap (kbd "C-l 1") 'langtool-check)
(define-key custom-keymap (kbd "C-l 2") 'langtool-check-done)
(define-key custom-keymap (kbd "C-l 3") 'langtool-switch-default-language)
(define-key custom-keymap (kbd "C-l 4") 'langtool-show-message-at-point)
(define-key custom-keymap (kbd "C-l l") 'langtool-show-message-at-point)
(define-key custom-keymap (kbd "C-l C-l") 'langtool-show-message-at-point)
(define-key custom-keymap (kbd "C-l 5") 'langtool-correct-buffer)
(define-key custom-keymap (kbd "C-l C-c") 'langtool-correct-at-point)

(provide 'init-langtool)
