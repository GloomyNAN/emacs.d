;;; init-php.el --- php
;;; Commentary:
;;; code:

(use-package php-mode
  :mode ("\\.php$" . php-mode))

;; Github https://github.com/nlamirault/phpunit.el
(use-package phpunit
  :init
  (add-to-list 'auto-mode-alist '("\\.php$'" .  php)))

(use-package composer)

(use-package company-php
  :after company
  :init
  (add-hook 'php-mode-hook
            #'(lambda ()
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
                  'ac-php-location-stack-back))))

(provide 'init-php)
;;; init-php.el ends here
