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

;; todo
(use-package ac-html
  :config
    ;; Set your ac-source
  (setq ac-sources '(ac-source-haml-tag
                     ac-source-haml-attr
                     ac-source-haml-attrv))
  ;; Enable auto complete mode
  (auto-complete-mode))

(defun setup-ac-for-haml ()
  ;; Require ac-haml since we are setup haml auto completion
  (require 'ac-haml)
  ;; Require default data provider if you want to use
  (require 'ac-html-default-data-provider)
  ;; Enable data providers,
  ;; currently only default data provider available
  (ac-html-enable-data-provider 'ac-html-default-data-provider)
  ;; Let ac-haml do some setup
  (ac-haml-setup)
  ;; Set your ac-source
  (setq ac-sources '(ac-source-haml-tag
                     ac-source-haml-attr
                     ac-source-haml-attrv))
  ;; Enable auto complete mode
  (auto-complete-mode))

(add-hook 'haml-mode-hook 'setup-ac-for-haml)

;;(add-to-list 'web-mode-ac-sources-alist
;;             '("html" . (ac-source-html-tag
;                         ac-source-html-attr
;;                         ac-source-html-attrv)))

(provide 'init-frontend)
;;; init-frontend ends here
