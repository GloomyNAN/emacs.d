;;; markdown-mode --- markdown
;;; Commentary:
;;; code:

;;; Github https://github.com/jrblevin/markdown-mode
(use-package markdown-mode
;;  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
;;  :hook(markdown-mode . pandoc-mode)
  :init (setq markdown-command "pandoc")
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))
  
;;; Github https://github.com/emacsorphanage/gh-md
(use-package gh-md)

;;; Github https://github.com/ardumont/markdown-toc/
(use-package markdown-toc)


;;; pandoc-mode
;; brew install wkhtmltopdf
;;(use-package pandoc-mode
;;  :hook(pandoc-mode . 'pandoc-load-default-settings))


(provide 'init-markdown)
;;; init-markdown ends here
