;;; init-consts.el --- basic settings before Emacs startup

;;; Commentary:
;;; (c) Cabins, github.com/cabins/.emacs.d

;;; Code:

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(fset 'yes-or-no-p 'y-or-n-p);reset yes/no to y/n

(provide 'init-kbd)