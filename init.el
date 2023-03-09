;;; init.el --- GloomyEmacs Initialization File
;;; commentary:
;;; code:

;; Copyright (c) 2017-2020 GLoomyNAN
;;
;; Author: GLoomy NAN <GLoomyNAN@163.com>
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
     '(("http"     . "127.0.0.1:1087")
	("https"   . "127.0.0.1:1087")))

(require 'init-elpa)
(require 'init-package)
(require 'init-markdown)
(require 'init-themes)
(require 'init-git)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-php)
(require 'init-java)
(require 'init-company)
(require 'init-frontend)
(require 'init-terminal)
(require 'init-yasnippet)
(require 'init-dirvish)
(require 'init-os)
(require 'init-kbd)
(require 'init-org)

(when (file-exists-p custom-file)
  (load-file custom-file))
