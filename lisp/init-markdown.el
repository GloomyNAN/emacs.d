;;;; markdown-mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(use-package pandoc-mode)
;; brew install wkhtmltopdf

(use-package pdf-tools)
;; brew install gs to support png images
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)

(use-package blog-admin
:init
(progn
  ;; your config
  (setq blog-admin-backend-type 'hexo)
  (setq blog-admin-backend-path "~/WorkArea/GloomyNAN/blog")
  (setq blog-admin-backend-new-post-in-drafts t)
  (setq blog-admin-backend-new-post-with-same-name-dir t)
  ))
(require 'blog-admin)
(provide 'init-markdown)
