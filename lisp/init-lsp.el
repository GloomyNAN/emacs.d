;;; init-lsp.el --- lsp
;;; commentary:
;;; code:

;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
(setq lsp-keymap-prefix "s-l")

(use-package lsp-mode
  :hook(;; replace XXX-mode with concrete major-mode(e. g. python-mode)
        (php-mode . lsp-deferred);; run command `npm i intelephense -g` to install.
        ;; if you want which-key integration
        (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package doom-themes)

;;;; Performance
;; https://emacs-lsp.github.io/lsp-mode/page/performance/
(setq gc-cons-threshold 100000000 ;;100mb
      read-process-output-max (* 1024 1024 256) ;; default 1mb
      lsp-treemacs-sync-mode t
      lsp-enable-file-watchers t
      lsp-completion-provider :capf
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-lens-enable t
      lsp-ui-doc-enable t
      lsp-idle-delay 0.1 ;; clangd is fast
      ;; be more ide-ish
      lsp-headerline-breadcrumb-enable t
      lsp-file-watch-threshold 12000)


;; add some folder to ignore
;;(dolist (dir '(;;composer
;;               "[/\\\\]\\vendor\\'")
;;  (push dir lsp-file-watch-ignored)))

;;(add-to-list 'lsp-file-watch-ignored '(
;;				       "[/\\\\]\\vendor\\'"))


;; optionally
(use-package lsp-ui :commands lsp-ui-mode)

;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
;;(use-package which-key
;;   :config
;;   (which-key-mode))

(provide 'init-lsp)
;;; init-lsp ends here
