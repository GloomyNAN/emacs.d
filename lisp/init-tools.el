;;; init-tools.el --- mini tools;
;;; Commentary:
;;; Code:

;; Displaying ISO week numbers in CalendarMode
(copy-face 'default 'calendar-iso-week-header-face)
(set-face-attribute 'calendar-iso-week-header-face nil
                    :height 0.7)
(setq calendar-intermonth-header
      (propertize "Wk"                  ; or e.g. "KW" in Germany
                  'font-lock-face 'calendar-iso-week-header-face))

;; which-key
(use-package which-key
  :hook (after-init . which-key-mode))

;;; command-log-mode
(use-package command-log-mode)

;;; Github https://github.com/nschum/window-numbering.el
(use-package window-numbering
  :hook (after-init . window-numbering-mode))

;;; Github https://github.com/kuanyui/tldr.el/
(use-package tldr)
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

;;; Github https://github.com/bbatsov/super-save/tree
(use-package super-save
  :config (super-save-mode t))
(use-package restart-emacs)

(provide 'init-tools)
;;; init-tools.el ends here
