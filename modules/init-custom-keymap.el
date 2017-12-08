(setq custom-keymap (make-sparse-keymap))

(define-key custom-keymap (kbd "C-c C-u") 'uncomment-region)
(define-key custom-keymap (kbd "C-c C-c") 'comment-region)
(define-key custom-keymap (kbd "C-c p") 'ff-find-other-file)
(define-key custom-keymap (kbd "C-c C-p") 'pop-global-mark)
(define-key custom-keymap (kbd "M-i") 'previous-line)
(define-key custom-keymap (kbd "M-k") 'next-line)
(define-key custom-keymap (kbd "M-j") 'backward-char)
(define-key custom-keymap (kbd "C-M-j") 'backward-word)
(define-key custom-keymap (kbd "M-l") 'forward-char)
(define-key custom-keymap (kbd "C-M-l") 'forward-word)
(define-key custom-keymap (kbd "C-M-i") 'backward-paragraph)
(define-key custom-keymap (kbd "C-M-k") 'forward-paragraph)

(define-minor-mode custom-keymap-mode
  :init-value t
  :lighter " Keys "
  :keymap custom-keymap)

;; https://emacs.stackexchange.com/questions/352/how-to-override-major-mode-bindings/358#358
;; autoload
(define-globalized-minor-mode global-my-mode custom-keymap-mode custom-keymap-mode)
;; prioritize
(add-to-list 'emulation-mode-map-alists `((custom-keymap-mode . ,custom-keymap)))

(provide 'init-custom-keymap)