;;; init-package init some packages which has few  configurations;

;;;recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(setq recentf-max-saved-items 1000)
(setq recentf-exclude '("/tmp/" "/ssh:"))
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;;; Powerful editing

;; ac-ispell
;;(use-package ac-ispell)

;; iedit
(use-package iedit)

;; avy
(use-package avy)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(avy-setup-default)
(global-set-key (kbd "C-c C-j") 'avy-resume)

;; yaml
(use-package yaml-mode
  :mode "\\.yml\\'")

;;;; Powerful System

;; which-key
(use-package which-key
  :hook (after-init . which-key-mode))

;; ivy
(use-package ivy
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t
        enable-recursive-minibuffers t))

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;;; file explorer

;; projectile
(use-package projectile)
(projectile-mode +1)

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; treemacs
(use-package treemacs
  :bind ("<f5>" . treemacs))
(use-package treemacs-projectile)
(use-package all-the-icons)

(use-package window-numbering
  :hook (after-init . window-numbering-mode))

;;; others

;; keyfreq
(use-package keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(use-package restart-emacs)
;;(use-package keepass-mode)
(provide 'init-package)
