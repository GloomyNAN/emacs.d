;;; init-themes.el --- themes
;;; Commentary:
;;; code:

(use-package monokai-theme)
(load-theme 'monokai t)

(menu-bar-mode -1)
(electric-pair-mode t)

;;(global-linum-mode 1)

(setq pop-up-frames nil)
(setq ns-pop-up-frames nil)

;; To make system copy work with Emacs paste and Emacs copy work with system paste.
;;(setq x-select-enable-clipboard t)
;; or
(setq select-enable-clipboard t)

;; auto-save-mode
(auto-save-mode t)
(setq auto-save-interval 50)
(setq auto-save-default t)
(setq auto-save-timeout 30)
(setq auto-save-no-message nil)

(global-hl-line-mode 1)
(global-auto-revert-mode 1)
(put 'set-goal-column 'disabled nil)

;; some gui configurations
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

;; custom settings
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(setq make-backup-files nil)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq ring-bell-function 'ignore)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-themes)
;;; init-themes ends here
