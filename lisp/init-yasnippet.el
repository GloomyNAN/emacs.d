;;; init-yasnippet.el --- yanippet
;;; Commentary:
;;; code:

(use-package yasnippet
  :init(yas-global-mode t)
  :config
  (setq  yas-snippet-dirs
         '("~/.emacs.d/snippets"                 ;; personal snippets
           "~/.emacs.d/elpa/yasnippet-snippets-20230227.1504/snippets" ;; the yasmate collection
           ))
  )

(use-package yasnippet-snippets)
(use-package ivy-yasnippet
  :bind ("C-x y" . ivy-yasnippet))
(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
