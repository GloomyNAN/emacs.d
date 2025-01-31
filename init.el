;;; init.el --- GloomyEmacs Initialization File
;;; commentary:
;;; code:

;; Copyright (c) 2017-2020 GloomyNAN
;;
;; Author: GLoomy NAN <GloomyNAN@Gmail.com>
;; URL: https://github.com/GloomyNAN
;;
;; This file is not part of GNU Emacs.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(defconst gloomyemacs-version          "0.0.2" "GloomyEmacs version.")
(defconst gloomyemacs-emacs-min-version   "0.0.2" "Minimal version of Emacs.")

(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/")))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))


(setq url-proxy-services
     '(("http"     . "127.0.0.1:7890")
	("https"   . "127.0.0.1:7890")))

(require 'init-elpa)
(require 'init-package)
(require 'init-os)
(require 'init-pm)
(require 'init-editor)
(require 'init-markdown)
(require 'init-themes)
(require 'init-git)
(require 'init-flycheck)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-dirvish)
(require 'init-tools)
(require 'init-kbd)
(require 'init-reader)
(require 'init-org)
(require 'init-go)
(require 'init-python)
(require 'init-json)
(require 'init-yaml)
(require 'init-lsp)
(require 'init-php)
(require 'init-java)
(require 'init-lua)
(require 'init-frontend)
(require 'init-terminal)
(require 'init-docker)
;;(require 'init-eaf)

(when (file-exists-p custom-file)
  (load-file custom-file))
;;; init.el ends here