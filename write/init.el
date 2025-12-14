(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(setq custom-file "~/.emacs.d/write/custom.el")
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/common/modules/")

;; archive setup + utilities
(require 'package-utils)

(ensure-package 'gnu-elpa-keyring-update)

;; custom-keymap + custom-keymap-mode
(require 'init-custom-keymap)

(require 'init-company)

(require 'init-view)

(require 'init-avy-mode)

(require 'init-makefile-mode)

(require 'init-markdown-mode)

(require 'init-undo-tree)

(require 'init-yaml-mode)

(require 'init-json-mode)

(require 'init-latex-mode)

(require 'init-writeroom-mode)

(require 'init-org-mode)

(require 'init-flyspell-mode)

(require 'init-langtool)
