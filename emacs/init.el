; config desde cero 2025-03-20 09:28
; desde este tutorial: https://www.youtube.com/watch?v=74zOY-vgkyw y lo que
; tenia antes...
; TODOs
; - [ ] Fuzzy finder para archivos
; - [ ] Setup para Rust con LSP
; - [ ] Setup de vertico
; - [ ] Autocompletado
; - [X] Abrir y cerrar la consola con una shortcut
; - [ ] Hay que hacer andar el undo bien
; - [ ] Magit
; - [ ] org-rom???
; - [ ] Encontrar un colortheme mas piola

;-------------------------------------------------------------------------
; initialization
;-------------------------------------------------------------------------
(setq gc-cons-threshold 800000)
(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

;-------------------------------------------------------------------------
; font
;-------------------------------------------------------------------------
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 137)

;-------------------------------------------------------------------------
; colortheme
;-------------------------------------------------------------------------
;(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;-------------------------------------------------------------------------
; Initialize package sources
;-------------------------------------------------------------------------
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; TODO(elsuizo): no se que es esto
(use-package command-log-mode)

;-------------------------------------------------------------------------
; terminal
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
; evil mode
;-------------------------------------------------------------------------
(use-package evil
	    :init (setq evil-want-C-i-jump nil)
	    :config (evil-mode))
(require 'evil)
    (evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(command-log-mode company doom-modeline evil-leader flycheck ivy
		      lsp-mode rust-mode toggle-term vterm-toggle)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; key-bindings
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
"b" 'switch-to-buffer
"w" 'save-buffer
"c" '(lambda() (interactive) (find-file "~/.emacs.d/init.el"))
"t" 'vterm-toggle ; esto viene del package ~vterm-toggle~
)
(setq package-list '(evil-leader))

;-------------------------------------------------------------------------
; keybindings
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
; vterm config
;-------------------------------------------------------------------------
; con esto hacemos que la terminal aparezca donde nosotros queremos
(add-to-list 'display-buffer-alist
             '("\\*vterm\\*"
               (display-buffer-in-side-window)
               (window-height . 0.3)
               (side . bottom)))
