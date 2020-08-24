(use-package monokai-theme)

;; modes

(load-theme 'monokai t)
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

(setq-default cursor-type 'bar) ;; 更改光标的样式
(setq inhibit-splash-screen 1)
(setq make-backup-files nil) ;;close backup files
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq ring-bell-function 'ignore) ;close bell
(setq auto-save-default nil)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode);;自动补全括号

(provide 'init-themes)
