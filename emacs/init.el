; load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
; initialize package.el
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

