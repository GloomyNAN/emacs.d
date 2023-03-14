;;; init-git.el --- git extensions
;;; Commentary:
;;; code:

;; magit
(use-package magit)

(use-package magit-stats)

;; Github https://github.com/alphapapa/magit-todos
(use-package magit-todos
  :after magit
  :init (magit-todos-mode))

;;; Gihhub https://github.com/Artawower/blamer.el
(use-package blamer
  :ensure t
  :bind (("s-i b i" . 'blamer-show-commit-info)
      ("s-i b p" . 'blamer-show-posframe-commit-info))
  :defer 20
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                    :background nil
                    :height 140
                    :italic t)))
  :config
  (global-blamer-mode 1))

(provide 'init-git)
;;; init-git ends here
