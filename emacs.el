;; Debug on error for startup
(toggle-debug-on-error +1)

;; compile everything
(setq comp-deferred-compilation nil)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq package-enable-at-startup nil)

;; install use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; load deps
(use-package dash)

(use-package s)
(use-package f)
(cd "~/Memex/emacs-config/")
(org-babel-load-file "~/Memex/emacs-config/root.org")
(cd "~/Memex")

;; turn off debug now that everything works (hopefully)
(toggle-debug-on-error -1)
