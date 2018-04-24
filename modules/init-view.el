(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(global-subword-mode)
(show-paren-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq-default inhibit-startup-screen t)
(setq-default column-number-mode t)
(setq-default show-trailing-whitespace t)
(setq-default indent-tabs-mode nil)
(setq-default confirm-kill-emacs 'y-or-n-p)
(setq-default fill-column 80)
(setq-default scroll-step 1)
(setq-default require-final-newline t)
(add-hook 'term-mode-hook (lambda() (setq-local show-trailing-whitespace nil)))

(provide 'init-view)
