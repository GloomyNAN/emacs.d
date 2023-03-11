;;; init--reader.el --- -reader extensions
;;; Commentary:
;;; code:

;;; https://github.com/vedang/pdf-tools
;;; brew install gs to support png 
(use-package pdf-tools
  :hook ( 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))

(provide 'init-reader)
;;; init--reader ends here
