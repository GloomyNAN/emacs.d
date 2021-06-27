;;; init-multi-term.el --- term
;;; Commentary:
;;; code:

(use-package multi-term)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

   (custom-set-variables
     '(term-default-bg-color "#000000")        ;; background color (black)
     '(term-default-fg-color "#dddd00"))       ;; foreground color (yellow)
(provide 'init-multi-term)
