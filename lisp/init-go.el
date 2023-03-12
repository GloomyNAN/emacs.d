;;; init-go.el --- go extensions
;;; Commentary:
;;; code:

;;; Github https://github.com/dominikh/go-mode.el
(use-package go-mode
  :mode ("\\.go" . go-mode))

;;; Github https://github.com/emacsattic/company-go
(use-package company-go
  :after company
  :config
  (setq
   company-tooltip-limit 20                      ; bigger popup window
   company-idle-delay .3                         ; decrease delay before autocompletion popup shows
   company-echo-delay 0                          ; remove annoying blinking
   company-begin-commands '(self-insert-command))) ; start autocompletion only after typing

(provide 'init-go)
;;; init-go.el ends here
