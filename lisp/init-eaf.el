;;; init-eaf.el --- eaf extensions
;;; Commentary:
;;; code:

;; just on my mac needs to run command `$python3.10 ./install-eaf.py --install-all-apps`
;; mac version : 12.6

;;; Github https://github.com/emacs-eaf/emacs-application-framework/
(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  :init
  (require 'eaf)
  (require 'eaf-demo)
  (require 'eaf-file-sender)
  (require 'eaf-music-player)
  (require 'eaf-2048)
  (require 'eaf-camera)
  (require 'eaf-rss-reader)
  (require 'eaf-terminal)
  (require 'eaf-image-viewer)
  (require 'eaf-vue-demo)
  (require 'eaf-pdf-viewer)
  (require 'eaf-browser)
  (require 'eaf-map)
  (require 'eaf-markdown-previewer)
  (require 'eaf-file-browser)
  (require 'eaf-file-manager)
  (require 'eaf-mindmap)
;;  (require 'eaf-vue-tailwindcss)
  (require 'eaf-video-player)
  (require 'eaf-org-previewer)
  (require 'eaf-airshare)
  (require 'eaf-jupyter)
  (require 'eaf-netease-cloud-music)
  (require 'eaf-git)
  (require 'eaf-system-monitor)
  (require 'eaf-markmap)
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
  (eaf-bind-key nil "M-q" eaf-browser-keybinding);; unbind, see more in the Wiki
  )

(provide 'init-eaf)
;;; init-eaf ends here
