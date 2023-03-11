;;; init-editor.el --- Settings for smart editing
;;; Commentary:
;;; Code:

;;; Github https://github.com/emacsorphanage/ac-ispell
(use-package ac-ispell)

;;; Github https://github.com/victorhge/iedit
(use-package iedit
  :bind ("C-;" . iedit-mode))

;; Github https://github.com/emacs-evil/evil
(use-package evil)

(provide 'init-editor)
;;; init-editor ends here
