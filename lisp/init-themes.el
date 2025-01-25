;;; init-themes.el --- themes
;;; Commentary:
;;; Code:

;;; themes
(use-package doom-themes)
(load-theme 'doom-dracula t)

;;; Custom settings
(menu-bar-mode -1)
(electric-pair-mode t)
(set-face-attribute 'default nil :height 170)

(global-display-line-numbers-mode 1) ;; Enable line numbers globally
(setq pop-up-frames nil)
(setq ns-pop-up-frames 'fresh)

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

;; Some gui configurations
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
;(setq max-lisp-eval-depth 10000)
;(setq max-specpdl-size 10000)

;; Github https://github.com/jojojames/vscode-icon-emacs
(use-package vscode-icon
  :commands (vscode-icon-for-file))

;; Github https://github.com/domtronn/all-the-icons.el
(use-package all-the-icons
  :if (display-graphic-p))

;; Github https://github.com/rainstormstudio/nerd-icons.el
(use-package nerd-icons
  ;; :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  ;; (nerd-icons-font-family "Symbols Nerd Font Mono")
  )

;; Github https://github.com/emacs-dashboard/
(use-package dashboard
  :init
    (add-hook 'elpaca-after-init-hook #'dashboard-insert-startupify-lists)
    (add-hook 'elpaca-after-init-hook #'dashboard-initialize)
    (dashboard-setup-startup-hook)
  :after (all-the-icons)
  :config
    (setq initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name))
        dashboard-banner-logo-title "Welcome to the new life!"
        dashboard-startup-banner (expand-file-name "asstes/banner.txt" user-emacs-directory)
    	  
        ;; Content is not centered by default. To center, set
        dashboard-center-content t

        dashboard-items '((recents  . 15)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5))
  
	dashboard-startupify-list '(dashboard-insert-banner
                                    dashboard-insert-newline
                                    dashboard-insert-banner-title
                                    dashboard-insert-newline
                                    dashboard-insert-navigator
                                    dashboard-insert-newline
                                    dashboard-insert-init-info
                                    dashboard-insert-items
                                    dashboard-insert-newline
                                    dashboard-insert-footer
                                    )

	dashboard-navigation-cycle t
	dashboard-heading-shorcut-format " [%s]"
	dashboard-icon-type 'all-the-icons ; use `all-the-icons' package
    	dashboard-set-heading-icons t

	dashboard-heading-icons '((recents   . "history")
				  (bookmarks . "bookmark")
				  (agenda    . "calendar")
				  (projects  . "rocket")
				  (registers . "database"))
	dashboard-set-file-icons t
	dashboard-projects-switch-function 'projectile-persp-switch-project
	dashboard-week-agenda t
	dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)


    (if(display-graphic-p)
	(progn
    ;; Format: "(icon title help action face prefix suffix)"
    (setq dashboard-navigator-buttons
	  `(;; line 1
	    ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
	      "Github"
              "Browse Github"
              (lambda (&rest _) (browse-url "https://github.com/GloomyNAN/emacs.d")))
	     ("★" "Star" "Show stars" (lambda (&rest _) (show-stars)) warning)
	     ("?" "" "?/h" #'show-help nil "<" ">"))

            ;; line 2
	    ((,(all-the-icons-faicon "fire" :height 1.1 :v-adjust 0.0)
	      "EMail:GlomyNAN@Gmail.com"
	      "send a email to me !"
	      (lambda (&rest _) (browse-url "mailto:GloomyNAN@Gmail.com")))
             ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error)))

          dashboard-footer-icon (all-the-icons-octicon "dashboard"
						       :height 1.1
						       :v-adjust -0.05
						       :face 'font-lock-keyword-face))))
    )

(provide 'init-themes)
;;; init-themes.el ends here
