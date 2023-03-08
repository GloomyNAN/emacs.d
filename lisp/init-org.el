;;; init-org --- org-mode
;;; Commentary:
;;; Code:

(use-package org
  :config
  (progn
    (setq org-src-fontify-natively t)
    (setq org-log-done 'time))
  :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture)))

(provide 'init-org)
;;; init-org.el ends here

