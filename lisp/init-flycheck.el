;;; init-flycheck.el --- flycheck
;;; Commentary:
;;; Code:

;;; Github https://github.com/flycheck/flycheck
(use-package flycheck
  :init
  (global-flycheck-mode)
  :config
  (add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
              (display-buffer-reuse-window
               display-buffer-in-side-window)
              (side            . bottom)
              (reusable-frames . visible)
              (window-height   . 0.1))))
;; Syntax checks
;; npm install -g csslint
;; brew install hadolint ;; DockerFile
;; go get -u golang.org/x/lint/golint
;; npm install -g eslint
;; npm install jsonlint -g
;; brew install markdownlint-cli
;; pip install pylint
;; gem install sqlint
;; npm install -g js-yaml

(provide 'init-flycheck)
;;; init-flycheck.el ends here
