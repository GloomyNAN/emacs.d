;;; init-yanippet.el --- yanippet
;;; Commentary:
;;; code:

(use-package yasnippet)
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(provide 'init-yasnippet)

;;; init-yasnippet ends here
