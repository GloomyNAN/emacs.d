;;; init-lsp.el --- lsp
;;; commentary:
;;; code:

(use-package lsp-mode
    :init
    ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
    (setq lsp-keymap-prefix "C-c l")
    :hook(;; replace XXX-mode with concrete major-mode(e. g. python-mode)
          (php-mode . lsp-deferred);; run command `npm i intelephense -g` to install.

          ;; run command `npm i -g unified-language-server`
          (markdown-mode . lsp-deferred)
          (gfm-mode . lsp-deferred)
          
          (java-mode . lsp-deferred)
          ;; if you want which-key integration
          (lsp-mode . lsp-enable-which-key-integration))
    :commands (lsp lsp-deferred)

    :config
;;;; Performance
    ;; https://emacs-lsp.github.io/lsp-mode/page/performance/
    (setq gc-cons-threshold (* 1024 1024 100) ;; 100mb
          read-process-output-max (* 1024 1024 256) ;; 256mb
	  lsp-idle-delay 0.500
	  treemacs-space-between-root-nodes nil
          company-idle-delay 0.0
          company-minimum-prefix-length 1	  
	  lsp-treemacs-sync-mode t	 
	  )
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\vendor\\'")
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\node_modules\\'")
    )

;; optionally
(use-package lsp-ui
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-show-hover t
        lsp-ui-sideline-show-code-actions t
        lsp-ui-doc-show-with-cursor t
        lsp-ui-imenu-auto-refresh t))

;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; if you are ivy user
(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol
  :bind (
	 :map lsp-command-map
	 ("s" . 'lsp-ivy-workspace-symbol)))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list
  :bind (
         :map lsp-command-map
              ("t e" . 'lsp-treemacs-errors-list)
              ("t s" . 'lsp-treemacs-symbols)))

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(provide 'init-lsp)
;;; init-lsp ends here
