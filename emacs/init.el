; load the config
;; Disable C-i to jump forward to restore TAB functionality in Org mode.
(setq evil-want-C-i-jump nil)
(org-babel-load-file (concat user-emacs-directory "config.org"))
; initialize package.el
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

