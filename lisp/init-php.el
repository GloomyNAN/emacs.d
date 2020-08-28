(use-package php-mode)
(use-package composer)
(use-package ac-php)


(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(setq web-mode-engines-alist
  '(("php"    . "\\.phtml\\'")
    ("blade"  . "\\.blade\\."))
)

(provide 'init-php)
