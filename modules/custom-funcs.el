(require 'cl)

(defun confirm-replace-in-list(from to file-list)
  (let (confirm char open-files opened-last-file opened-buffer)
    (setq confirm t)
    (setq open-files (mapcar 'buffer-file-name (buffer-list)))
    (mapc (lambda (file)
            (if (member file open-files)
                (setq opened-last-file nil)
              (setq opened-last-file t))
            (find-file file)
            (beginning-of-buffer)
            (while (re-search-forward from nil t)
              (setf
               (point) (match-beginning 0)
               (mark) (match-end 0))
              (when confirm
                (setq
                 char
                 (read-char-choice
                  "[!]replace all, [y]replace, [n]skip, [q]uit: "
                  '(33 110 113 121))) ;; !, n, q, y respectively
                (if (eq char 33) (setq confirm nil)))
              (setf
               (point) (match-end 0)
               (mark) nil)
              (cond
               ((eq char 33) (replace-match to))
               ((eq char 121) (replace-match to))
               ((eq char 113)
                (progn (if (and opened-last-file (not (buffer-modified-p)))
                           (kill-buffer))
                       (throw 'quit-tag "q pressed")))))

            (if (and opened-last-file (not (buffer-modified-p)))
                (kill-buffer)))
          file-list)))

(defun find-file-replace (directory regexp from to)
  (interactive (list
                (read-directory-name "Directory to find in: ")
                (read-regexp "Regexp passed to find: ")
                (read-string "Regexp replace (from): ")
                (read-string "Regexp replace (to): ")))
  (let (opened-buffer)
    (setq opened-buffer (current-buffer))
    (catch 'quit-tag
      (confirm-replace-in-list from to (directory-files-recursively
                                        directory
                                        regexp)))
    (switch-to-buffer opened-buffer)))

(defun replace-within-major-mode (directory from to)
  (interactive (list
                (read-directory-name "Directory to find in: ")
                (read-string "Major-mode regexp replace (from): ")
                (read-string "Major-mode regexp replace (to): ")))
  (let (file-list opened-buffer)
    (setq opened-buffer (current-buffer))
    (catch 'quit-tag
      (mapc
       (lambda (mode-ext-pair)
         (if (eq major-mode (cdr mode-ext-pair))
             (setq file-list (append file-list (directory-files-recursively
                                                directory (car mode-ext-pair))))))
       auto-mode-alist)
      (setq file-list (remove-duplicates file-list))
      (confirm-replace-in-list from to file-list)
      (switch-to-buffer opened-buffer))))



(provide 'custom-funcs)
