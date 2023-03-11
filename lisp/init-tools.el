;;; init-tools.el --- mini tools;
;;; Commentary:
;;; Code:

;; which-key
(use-package which-key
  :hook (after-init . which-key-mode))

;;; command-log-mode
(use-package command-log-mode)

;;; Github https://github.com/nschum/window-numbering.el
(use-package window-numbering
  :hook (after-init . window-numbering-mode))

;; keyfreq
(use-package keyfreq
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)
  (setq keyfreq-excluded-commands
      '(self-insert-command
        forward-char
        backward-char
        previous-line
        next-line)))

(use-package restart-emacs)

(provide 'init-tools)
;;; init-tools.el ends here