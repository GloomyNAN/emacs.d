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

;;;; markdown-mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

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

;;;; file-explorer
;; treemacs
(use-package treemacs
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "<f8>") #'treemacs-select-window))
  :bind ("<f5>" . treemacs))
(use-package all-the-icons)


(use-package window-numbering)
(use-package restart-emacs)

(provide 'init-package)
