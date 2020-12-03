;;; init-java.el --- java
;;; Commentary:
;;; Code:

(use-package hydra)
(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)
(provide 'init-java)
;;; init-java ends here
