;;; init-themes.el --- themes
;;; Commentary:
;;;

;;; themes
(use-package doom-themes)
(load-theme 'doom-dracula t)

;;; Custom settings
(menu-bar-mode -1)
(electric-pair-mode t)
(set-face-attribute 'default nil :height 170)

(global-linum-mode 1)
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
;(setq max-lisp-eval-depth 10000)
;(setq max-specpdl-size 10000)

(use-package vscode-icon
  :commands (vscode-icon-for-file))

;; Github https://github.com/domtronn/all-the-icons.el
(use-package all-the-icons
  :if (display-graphic-p))

;; Github https://github.com/emacs-dashboard/
(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  :config
    (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*"))
        dashboard-banner-logo-title "Welcome to the new life!"
        dashboard-startup-banner (expand-file-name "asstes/banner.txt" user-emacs-directory)
        dashboard-center-content t
        dashboard-items '((recents  . 15)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5))
        dashboard-set-heading-icons t
        dashboard-set-file-icons t
        dashboard-modify-heading-icons '((recents . "file-text")
                                       (bookmarks . "book"))
        dashboard-set-navigator t
        dashboard-set-init-info t
        dashboard-projects-switch-function 'projectile-persp-switch-project
        dashboard-week-agenda t
        dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)

    (if(display-graphic-p)
        (progn
          (setq dashboard-navigator-buttons
                `(;;
                  ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
                    "Github"
                    "Browse github"
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
    (add-to-list 'dashboard-items '(agenda))
    )

(provide 'init-themes)
;;; init-themes ends here
