;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; DEFAULT MODE = emacs
(setq evil-default-state 'emacs)

(setq
 ;; projectile-project-search-path '("~/git/")
 ;; python-shell-interpreter "poetry run python"
 ;; flycheck-python-pycompile-executable "poetry run python"
 yas-indent-line 'fixed
 )

;; fast suggestions
(setq which-key-idle-delay 0.1)

;; THEME
(setq doom-theme 'doom-acario-dark)

;; BINDINGS
(global-set-key (kbd "M-TAB") 'company-complete)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key "\M-n" (lambda() (interactive) (scroll-up 4)))
(global-set-key "\M-p" (lambda() (interactive) (scroll-down 4)))
(map! :gi "C-b" #'backward-char
      :gi "C-f" #'forward-char)
;;      :gi "C-n" #'forward-line
;;      :gi "C-p" #'previous-line)

;; evilem bindings
(map! :leader
      "m n" #'evilem-motion-next-line
      )
(map! :leader
      "m p" #'evilem-motion-previous-line)


;; AUTOCOMPLETE
;; (require 'company)
(setq company-idle-delay 0.1
      company-minimum-prefix-length 2)

;; (global-set-key (kbd "C-<tab>") 'company-complete)

;; ORGMODE
(setq org-log-done t)

;; Disabling smartparens (buggy on large files)
 (add-hook 'org-mode-hook (lambda () (smartparens-mode -1)))
