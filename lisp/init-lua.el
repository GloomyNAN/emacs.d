;;; init-json.el --- lua extensions
;;; Commentary:
;;; code:

(provide 'init-lua)

;;; Github https://github.com/immerrr/lua-mode
(use-package lua-mode
    :mode ("\\.lua" . lua-mode))

(use-package company-lua
  :after company
  :hook (lua-mode . my-lua-mode-company-init)
  :config
  (defun my-lua-mode-company-init ()
    (setq-local company-backends '((company-lua
                                    company-etags
                                    company-dabbrev-code
                                    company-yasnippet)))))
;;; init-lua.el ends here
