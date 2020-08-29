;; init some packages which has few  configurations;

;;;recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(setq recentf-max-saved-items 1000)
(setq recentf-exclude '("/tmp/" "/ssh:"))
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;;; Powerful editing

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

;; magit
(use-package magit
  :bind ("C-x g" . magit-status))

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

;;;; file explorer
;; treemacs
(use-package treemacs
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "<f8>") #'treemacs-select-window))
  :bind ("<f5>" . treemacs))
(use-package all-the-icons)

(use-package window-numbering
  :hook (after-init . window-numbering-mode))
(use-package restart-emacs)

;;; Install epdfinfo via 'brew install pdf-tools' and then install the
;;; pdf-tools elisp via the use-package below. To upgrade the epdfinfo
;;; server, just do 'brew upgrade pdf-tools' prior to upgrading to newest
;;; pdf-tools package using Emacs package system. If things get messed
;;; up, just do 'brew uninstall pdf-tools', wipe out the elpa
;;; pdf-tools package and reinstall both as at the start.
;;(use-package pdf-tools
;;  :ensure t
;;  :config
;;  (custom-set-variables
;;    '(pdf-tools-handle-upgrades nil)) ; Use brew upgrade pdf-tools instead.
;;  (setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo"))
;;(pdf-tools-install)

;;(use-package keepass-mode)
(provide 'init-package)
