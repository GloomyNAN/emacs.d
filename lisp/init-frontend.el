;;; init-frontend --- frontend extensions
;;; Commentary:
;;; Code:

;;; Github https://github.com/fxbois/web-mode
(use-package web-mode
  :mode ("\\.html\\'" . 'web-mode)
  :config
  (setq web-mode-engines-alist
        '(("php" . "\\.php\\'")
          ("blade" . "\\.blade\\.")
          ("freemarker" . "\\.ftl\\.")
          )
        ;; Indentation
        web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        ;; Left padding
        web-mode-style-padding 1
        web-mode-script-padding 1
        
        web-mode-block-padding 0
        web-mode-comment-style 2
        web-mode-enable-block-face t
        web-mode-enable-part-face t
        web-mode-enable-comment-interpolation t
        web-mode-enable-current-element-highlight t
        web-mode-enable-current-column-highlight t
	web-mode-ac-sources-alist
	'(("css" . (ac-source-css-property))
	  ("html" . (ac-source-words-in-buffer ac-source-abbrev)))
        ))

;;; Github https://github.com/mooz/js2-mode/
(use-package js2-mode)

;;; Github https://github.com/yasuyk/web-beautify
;;; run command 'npm -g install js-beautify'
(use-package web-beautify
  :bind
  (:map web-mode-map ("C-c b" . 'web-beautify-html))
  (:map css-mode-map ("C-c b" . 'web-beautify-html))
  (:map js-mode-map ("C-c b" . 'web-beautify-html))
  (:map js2-mode-map ("C-c b" . 'web-beautify-html))
  (:map html-mode-map ("C-c b" . 'web-beautify-html))
  (:map json-mode-map ("C-c b" . 'web-beautify-html))
  )

;;; Github https://github.com/AdamNiederer/vue-mode/
(use-package vue-mode)

;;; Github https://github.com/AdamNiederer/vue-mode/
(use-package vue-html-mode)

;;(use-package rjsx-mode)

(use-package rainbow-mode)

;;; Github https://github.com/osv/company-web/
(use-package company-web
    :after company
    :init
    (require 'company-web-html)                          ; load company mode html backend
    ;; and/or
    (require 'company-web-jade)                          ; load company mode jade backend
    (require 'company-web-slim)                          ; load company mode slim backend
    (add-hook 'web-mode-hook
	      #'(lambda ()
                  (set (make-local-variable 'company-backends) '(company-web-html))
                  (company-mode t)))
    :config
    (setq company-tooltip-limit 20)                      ; bigger popup window
    company-tooltip-align-annotations t          ; align annotations to the right tooltip border
    company-idle-delay .3                         ; decrease delay before autocompletion popup shows
    company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

(provide 'init-frontend)
;;; init-frontend.el ends here
