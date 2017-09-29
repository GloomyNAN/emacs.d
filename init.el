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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org monokai-theme find-file-in-project ace-jump-mode helm smex yasnippet auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )