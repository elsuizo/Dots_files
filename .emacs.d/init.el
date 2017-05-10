(setq gc-cons-threshold 400000000)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode)
(show-paren-mode)

;;; Set up package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
;; (setq use-package-verbose t)
(server-start)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
; initialize package.el
(package-initialize)

(setq gc-cons-threshold 800000)
