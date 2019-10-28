;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
 projectile-project-search-path '("~/git/")
 python-shell-interpreter "poetry run python"
 flycheck-python-pycompile-executable "poetry run python"
 )

;; DnD
(load! "lisp/ox-dnd")

;; THEME
(setq doom-theme 'doom-one-light)

;; BINDINGS
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key "\M-n" (lambda() (interactive) (scroll-up 4)))
(global-set-key "\M-p" (lambda() (interactive) (scroll-down 4)))
(map! :gi "C-b" #'backward-char
      :gi "C-f" #'forward-char)

;; AUTOCOMPLETE
(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)

(global-set-key (kbd "C-<tab>") 'company-complete)

;; ORGMODE
(setq org-log-done t)

;; Disabling smartparens (buggy on large files)
(add-hook 'org-mode-hook (lambda () (smartparens-mode -1)))
