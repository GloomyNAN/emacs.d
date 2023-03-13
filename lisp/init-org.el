;;; init-org --- org-mode
;;; Commentary:
;;; Code:

(use-package org
  :config
   (setq org-src-fontify-natively t
         org-log-done 'time
	 org-catch-invisible-edits 'show
	 )
   :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture)
	 :map org-mode-map
	 ("C-c o j" . org-clock-jump-to-current-clock)
	 ("C-c o l" . org-clock-in-last)
	 ("C-c o i" . org-clock-in)
	 ("C-c o o" . org-clock-out)
	 ))

;;; Github https://github.com/minad/org-modern
(use-package org-modern)

;;; Github https://github.com/rexim/org-cliplink
(use-package org-cliplink)

(provide 'init-org)
;;; init-org.el ends here
