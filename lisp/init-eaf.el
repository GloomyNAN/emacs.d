;;; init-eaf.el --- eaf extensions
;;; Commentary:
;;; code:

;;; https://github.com/emacs-eaf/emacs-application-framework/
(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  :custom
  ; See https://github.com/emacs-eaf/emacs-application-framework/wiki/Customization
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :config
  (defalias 'browse-web #'eaf-open-browser)
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding)) ;; unbind, see more in the Wiki

(require 'eaf-browser)
(require 'eaf-pdf-viewer)
(require 'eaf-music-palyer)
(require 'eaf-video-palyer)
(require 'eaf-image-viewer)
(require 'eaf-rss-reader)
(require 'eaf-terminal)
(require 'eaf-camera)
(require 'eaf-markdown-perviewer)
(require 'eaf-org-perviewer)
(require 'eaf-git)
(require 'eaf-file-manager)
(require 'eaf-markmap)
(require 'eaf-system-monitor)
(require 'eaf-mindmap)
(require 'eaf-jupyter)
(require 'eaf-file-sender)
(require 'eaf-file-browser)
(require 'eaf-airshare)
(require 'eaf-map)
(require 'eaf-netease-cloud-muisc)
(require 'eaf-js-video-player)

(provide 'init-eaf)
;;; init-eaf ends here
