;;; init-terminal.el ---
;;; Commentary:
;;; code:

(use-package multi-term
  :config
  (setq multi-term-program "/bin/bash")
  :bind
  ("C-x C-t" . 'multi-term)
  :custom
  (term-default-bg-color "#000000")        ;; background color (black)
  (term-default-fg-color "#dddd00"))       ;; foreground color (yellow)

(provide 'init-terminal)
;;; 'init-termial ends here
