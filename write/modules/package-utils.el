(require 'package)

;; ssl availability
(defconst no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))

;; archives
(add-to-list 'package-archives
             `("melpa" .
		    ,(concat (if no-ssl "http" "https")
			     "://melpa.org/packages/")))

(package-initialize)
;; refresh package list
(unless package-archive-contents (package-refresh-contents))

;; installs and requires
(defun ensure-package (package)
  (if (package-installed-p package)
      t ;; package is installed
    (if (assoc package package-archive-contents)
        (package-install package)
      (progn
        (package-refresh-contents)
        (package-install package)))))

(provide 'package-utils)
