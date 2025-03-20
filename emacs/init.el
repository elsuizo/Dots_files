; Nueva config desde cero 2025-03-20 09:28
; desde este tutorial: https://www.youtube.com/watch?v=74zOY-vgkyw y lo que
; tenia antes...

(setq gc-cons-threshold 800000)
(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 137)

(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
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

(use-package command-log-mode)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

; evil mode
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
 '(package-selected-packages nil))
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
"c" 'cargo-process-build
"t" 'term)
(setq package-list '(evil-leader))

(use-package lsp-mode
  :ensure t
  :bind (:map lsp-mode-map
	      ("C-c d" . lsp-describe-thing-at-point)
	      ("C-c a" . lsp-execute-code-action))
  :bind-keymap ("C-c l" . lsp-command-map)
  :config
  (lsp-enable-which-key-integration t))

(use-package company
  :ensure t
  :hook ((emacs-lisp-mode . (lambda ()
			      (setq-local company-backends '(company-elisp))))
	 (emacs-lisp-mode . company-mode))
  :config
  (company-keymap--unbind-quick-access company-active-map)
  (company-tng-configure-default)
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1))

(use-package flycheck
  :ensure t)

;;; Rust
(use-package rust-mode
  :ensure t
  :hook ((rust-mode . flycheck-mode)
	 (rust-mode . lsp-deferred))
  :bind (("<f6>" . my/rust-format-buffer))
  :config
  (require 'rust-rustfmt)
  (defun my/rust-format-buffer ()
    (interactive)
    (rust-format-buffer)
    (save-buffer))
  (require 'lsp-rust)
  (setq lsp-rust-analyzer-completion-add-call-parenthesis nil
	lsp-rust-analyzer-proc-macro-enable t)
  (cl-defmethod lsp-clients-extract-signature-on-hover
    (contents (_server-id (eql rust-analyzer)))
    "from https://github.com/emacs-lsp/lsp-mode/pull/1740 to extract
signature in rust"
    (-let* (((&hash "value") contents)
	    (groups (--partition-by (s-blank? it) (s-lines (s-trim value))))
	    (sig_group (if (s-equals? "```rust" (car (-third-item groups)))
			   (-third-item groups)
			 (car groups)))
	    (sig (--> sig_group
		      (--drop-while (s-equals? "```rust" it) it)
		      (--take-while (not (s-equals? "```" it)) it)
		      (--map (s-trim it) it)
		      (s-join " " it))))
	   (lsp--render-element (concat "```rust\n" sig "\n```")))))
