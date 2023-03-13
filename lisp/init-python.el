;;; init-python.el --- python extensions
;;; Commentary:
;;; code:

;;; GitLab https://gitlab.com/python-mode-devs/python-mode
(use-package python-mode
  :mode ("\\.py" . python-mode))

;;; Github https://github.com/pythonic-emacs/anaconda-mode
(use-package anaconda-mode
  :after python
  :init
  (add-hook 'python-mode-hook #'anaconda-mode)
    (add-hook 'python-mode-hook #'anaconda-eldoc-mode))

;;; Github https://github.com/pythonic-emacs/company-anaconda/
(use-package company-anaconda
  :after anaconda-mode
  :init
  (add-hook 'company-backends #'company-anaconda))

(provide 'init-python)
;;; init-python.el ends here
