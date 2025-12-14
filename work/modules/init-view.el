(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(global-subword-mode)
(show-paren-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(visual-line-mode t)
(setq-default inhibit-startup-screen t)
(setq-default column-number-mode t)
(setq-default show-trailing-whitespace t)
(setq-default indent-tabs-mode nil)
(setq-default tab-bar-mode nil)
(setq-default confirm-kill-emacs 'y-or-n-p)
(setq-default fill-column 100)
(setq-default require-final-newline t)
(setq-default dired-listing-switches "-lah")
(setq-default split-width-threshold 120)
(setq-default ring-bell-function 'ignore) ;; disable audio notifications
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq-default mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq-default mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq-default scroll-step 1) ;; keyboard scroll one line at a time
(setq-default epg-gpg-program "gpg2")
(setq-default auth-sources
      '((:source "~/.authinfo.gpg")))
(setq-default scroll-step 1 scroll-conservatively  10000)
(add-hook 'term-mode-hook (lambda() (setq-local show-trailing-whitespace nil)))

(setq-default frame-title-format '("%f"))

;; Avoid performance issues in files with very long lines.
(global-so-long-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/common/themes")
(load-theme 'sanne t)

(provide 'init-view)

