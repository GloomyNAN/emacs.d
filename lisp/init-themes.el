(use-package monokai-theme)
(load-theme 'monokai t)

;; modes
(electric-pair-mode t)
(global-linum-mode 1) 
(auto-save-mode t)
(delete-selection-mode 1) 
(global-hl-line-mode 1)
(global-auto-revert-mode 1)
(put 'set-goal-column 'disabled nil)

;; some gui configurations
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(setq make-backup-files nil) ;;close backup files
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq ring-bell-function 'ignore) ;close bell
(setq auto-save-default nil)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-themes)
