;;; init-package --- init some packages which has few configurations;
;;; Commentary:
;;; Code:

;;; recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 50)
(setq recentf-max-saved-items 1000)
(setq recentf-exclude '("/tmp/" "/ssh:"))
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(use-package exec-path-from-shell)

(require 'exec-path-from-shell)
(dolist (var '("JAVA_HOME" "GOPATH"))
  (add-to-list 'exec-path-from-shell-variables var))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(when (daemonp)
  (exec-path-from-shell-initialize))

;; avy
(use-package avy)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g l") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(avy-setup-default)
(global-set-key (kbd "C-c C-j") 'avy-resume)

;; yaml
(use-package yaml-mode
  :mode "\\.yml\\'")

;; ivy
(use-package ivy
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t
        enable-recursive-minibuffers t))

;; Counsel
(use-package counsel
  :init (counsel-mode))

;; Swiper
(use-package swiper)

;; repair GUI Emacs perl:warning:Setting local failed
;; LC_ALL = (unset),
;; LANG = "en.US.UTF-8"
(setenv "LANG" "en_US.UTF-8")

(provide 'init-package)
;;; init-package ends here
