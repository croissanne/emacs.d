(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

;; archive setup + utilities
(require 'package-utils)

;; custom-keymap + custom-keymap-mode
(require 'init-custom-keymap)

(require 'init-clang-format)

(require 'init-diff-mode)

(require 'init-makefile-mode)

(require 'init-nxml-mode)

(require 'init-view)

(require 'init-ctags-update)

(require 'init-avy-mode)

(require 'init-markdown-mode)

(require 'init-undo-tree)

(require 'init-company)

(require 'init-c++-mode)

(require 'init-c-mode-common)

(require 'init-groovy-mode)
