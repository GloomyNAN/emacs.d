;;; init.el --- GloomyEmacs Initialization File
;;
;; Copyright (c) 2017-2017 GLoomyNAN
;;
;; Author: GLoomy NAN <GLoomyNAN@163.com>
;; URL: https://github.com/GloomyNAN
;;
;; This file is not part of GNU Emacs.

(package-initialize)

(defconst gloomyemacs-version          "0.0.1" "GloomEmacs version.")
(defconst gloomyemacs-emacs-min-version   "0.0.1" "Minimal version of Emacs.")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-recentf)
(require 'init-themes)