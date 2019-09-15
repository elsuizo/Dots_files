(require 'package)

; List the packages you want
(setq package-list '(evil-leader))

(setq gc-cons-threshold 400000000)
(set-default-font "mononoki  Nerd Font Mono 13")
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
(load-theme 'solarized t)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "b" 'switch-to-buffer
  "w" 'save-buffer
  "c" 'cargo-process-build)
; hacemos el puto company global
(add-hook 'after-init-hook  'global-company-mode)
; racer mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
