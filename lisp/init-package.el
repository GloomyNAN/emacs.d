;; init some packages which has few  configurations;

;;;recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(setq recentf-max-saved-items 1000)
(setq recentf-exclude '("/tmp/" "/ssh:"))
 (global-set-key (kbd "C-x C-r") 'recentf-open-files)

(use-package restart-emacs)
(provide 'init-package)
