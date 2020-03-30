(message "hi!")

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

;; archive setup + utilities
(require 'package-utils)

;; custom-keymap + custom-keymap-mode
(require 'init-custom-keymap)

;; some custome functions
(require 'custom-funcs)

(require 'init-company)

(require 'init-clang-format)

(require 'init-diff-mode)

(require 'init-makefile-mode)

(require 'init-nxml-mode)

(require 'init-view)

(require 'init-avy-mode)

(require 'init-markdown-mode)

(require 'init-undo-tree)

(require 'init-c++-mode)

(require 'init-c-mode-common)

(require 'init-groovy-mode)

(require 'init-xkcd)

(require 'init-js-mode)

(require 'init-git-timemachine)

(require 'init-xref)

(require 'init-vala-mode)

(require 'init-term-mode)
