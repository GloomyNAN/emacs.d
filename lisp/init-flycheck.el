;;; init-flycheck.el --- flycheck
;;; Commentary:
;;; Code:

;; check
(use-package flycheck
  :init
  (global-flycheck-mode)
  (add-hook 'after-init-hook global-flycheck-mode t)
  :custom-face
  (flycheck-phpcs-standard 'php-phpcs))

(provide 'init-flycheck)
;;; init-flycheck ends here
