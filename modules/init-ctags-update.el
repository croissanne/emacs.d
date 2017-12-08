(ensure-package 'ctags-update)

(autoload 'turn-on-ctags-auto-update-mode
  "ctags-update" "turn on 'ctags-auto-update-mode'." t)

(defun configure-ctags-auto-update()
  (add-to-list 'ctags-update-other-options "--exclude=.build")
  (add-to-list 'ctags-update-other-options "--exclude=Makefile")
  (add-to-list 'ctags-update-other-options "--exclude=bin")
  (add-to-list 'ctags-update-other-options "--exclude=data")
  (add-to-list 'ctags-update-other-options "--exclude=documentation"))

(add-hook 'ctags-auto-update-mode-hook 'configure-ctags-auto-update)

(provide 'init-ctags-update)
