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

(provide 'init-git)
;;; init-git ends here
