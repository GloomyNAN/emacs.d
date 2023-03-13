;;; init-java.el --- java
;;; Commentary:
;;; Code:

(use-package hydra)
;;(use-package lsp-java
;;  :config
;;  (add-hook 'java-mode-hook 'lsp)
;;  (lsp-java-server-install-dir "~/.emacs.d/jdts")
;;  )

(use-package dap-java
  :ensure nil)

;;(require 'lsp-java-boot)
;; ;; to enable the lenses
;;(add-hook 'lsp-mode-hook #'lsp-lens-mode)
;;(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(provide 'init-java)
;;; init-java.el ends here
