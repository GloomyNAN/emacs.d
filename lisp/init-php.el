;;; init-php.el --- php
;;; Commentary:
;;; code:

(use-package php-mode
  :mode ("\\.php$" . php-mode))

(use-package phpunit)
(use-package composer)

;; check
(use-package flycheck
  :init
  (global-flycheck-mode)
  (add-hook 'after-init-hook global-flycheck-mode t)
  :custom-face
  (flycheck-phpcs-standard 'php-phpcs))

;;company
(use-package ac-php)
(use-package company-php)
(add-hook 'php-mode-hook
          '(lambda ()
             ;; Enable company-mode
             (company-mode t)
             (require 'company-php)

             ;; Enable ElDoc support (optional)
             (ac-php-core-eldoc-setup)

             (set (make-local-variable 'company-backends)
                  '((company-ac-php-backend company-dabbrev-code)
                    company-capf company-files))

             ;; Jump to definition (optional)
             (define-key php-mode-map (kbd "M-]")
               'ac-php-find-symbol-at-point)

             ;; Return back (optional)
             (define-key php-mode-map (kbd "M-[")
               'ac-php-location-stack-back)))
               
(provide 'init-php)
;;; init-php ends here
