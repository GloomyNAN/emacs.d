;;; init-java.el --- java
;;; Commentary:
;;; Code:

(use-package hydra)
(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp)
  (setq lsp-java-vmargs
        '("-noverify"
          "-Xmx1G"
          "-XX:+UseG1GC"
          "-XX:+UseStringDeduplication"
          "-javaagent:/Users/GloomyNAN/.m2/repository/org/projectlombok/lombok/1.18.24/lombok-1.18.24.jar"
          "-Xbootclasspath/a:~/.m2/repository/org/projectlombok/lombok/1.18.24/lombok-1.18.24.jar"))
  )

(use-package dap-java
  :ensure nil)

;;(require 'lsp-java-boot)
;; to enable the lenses
;;(add-hook 'lsp-mode-hook #'lsp-lens-mode)
;;(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(provide 'init-java)
;;; init-java.el ends here