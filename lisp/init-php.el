(use-package php-mode)
(use-package web-mode)
(use-package smarty-mode)

;;laravel
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(setq web-mode-engines-alist
  '(("php"    . "\\.phtml\\'")
    ("blade"  . "\\.blade\\."))
)

(setq-default indent-tabs-mode nil)
(setq web-mode-code-indent-offset 4)
(setq web-mode-indent-style 4)

(provide 'init-php)
