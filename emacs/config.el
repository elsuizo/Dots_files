;; Install Evil and disable C-i to jump forward to restore TAB functionality in Org mode.
(use-package evil
             :init (setq evil-want-C-i-jump nil)
             :config (evil-mode))
  (require 'evil)
    (evil-mode 1)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
(setq byte-compile-warnings '(cl-functions))

(setq gc-cons-threshold 400000000)
(set-frame-font "mononoki  Nerd Font Mono 13")
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)
(show-paren-mode)

;;; Set up package
(require 'package)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.org/packages/") t)
; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
(setq use-package-verbose t)
(server-start)

(setq gc-cons-threshold 800000)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "b" 'switch-to-buffer
  "w" 'save-buffer
  "c" 'cargo-process-build
  "t" 'term)
(setq package-list '(evil-leader))

(electric-pair-mode)

; hacemos el puto company global
(add-hook 'after-init-hook  'global-company-mode)
; racer mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(load-theme 'solarized t)

;#(use-package yasnippet
;#    :ensure t
;#    :init
;#    (yas-global-mode 1))

;#+TODO: TODO(t) | DONE(d)
;#+TODO: REPORT(r) BUG(b) KNOWNCAUSE(k) | FIXED(f)
;#+TODO: | CANCELED(c)

(setq org-todo-keywords
       '((sequence "TODO" "FEEDBACK" "VERIFY" "WAITING" "|" "DONE" "DELEGATED")))

(setq org-file-apps
      '((auto-mode . emacs)
        ("\\.x?html?\\'" . "firefox %s")
        ("\\.pdf\\'" . "zathura \"%s\"")
        ("\\.pdf::\\([0-9]+\\)\\'" . "zathura \"%s\" -p %1")
        ("\\.pdf.xoj" . "xournal %s")
        ("\\.csv" . "gvim %s")))

;(require 'virtualenvwrapper)
;(venv-initialize-interactive-shells) ;; if you want interactive shell support
;(venv-initialize-eshell) ;; if you want eshell support
;(setq venv-location "/home/elsuizo/.pyenv/versions/3.5.2/bin/python3")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-agenda-files 
'("/home/elsuizo/Dropbox/Org_mode_files/Personal_org_mode_files/TODO.org"))
; hacemos que cada vez que damos por terminada una tarea ponga la fecha y hora de cuando termino
(setq org-log-done 'time)
(setq org-agenda-start-with-log-mode t)

(setq org-refile-targets
 '("/home/elsuizo/Dropbox/Org_mode_files/Personal_org_mode_files/TODO.org" :maxlevel . 1))

(advice-add 'org-refile :after 'org-save-all-org-buffers)

(defun what-line-only-number ()
      "lalala"
      (interactive)
      (save-restriction
        (widen)
        (save-excursion
          (beginning-of-line)
          (message "%d"
                   (1+ (count-lines 1 (point)))))))

(defun name-of-the-file-and-line ()
(interactive)
(kill-new
        (concat 
              (buffer-file-name (window-buffer (minibuffer-selected-window))) "::" (what-line-only-number))))

(global-set-key (kbd "C-c f") 'name-of-the-file-and-line)

(defun indent-buffer ()
      (interactive)
      (save-excursion
        (indent-region (point-min) (point-max) nil)))
    (global-set-key [f4] 'indent-buffer)

(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

(require 'saveplace)
(setq-default save-place t)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
