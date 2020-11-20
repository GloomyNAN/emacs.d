(use-package monokai-theme)
(load-theme 'monokai t)

(menu-bar-mode -1)
(electric-pair-mode t)

(global-linum-mode 1) 

(setq pop-up-frames nil)
(setq ns-pop-up-frames nil)

;; auto-save-mode
(auto-save-mode t)
(setq auto-save-interval 60)
(setq auto-save-default t)

(delete-selection-mode 1) 
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
