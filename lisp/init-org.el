(use-package org)

;;add Org-mode highlight
(require 'org)
(setq org-src-fontify-natively t)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
