(use-package monokai-theme)

(load-theme 'monokai t)

; (setq gc-cons-threshold 100000000)TODO 不知道干什么的
(put 'set-goal-column 'disabled nil)

(tool-bar-mode -1);; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode

(scroll-bar-mode -1);; 关闭文件滑动控件

(global-linum-mode 1) ;; 显示行号

(setq-default cursor-type 'bar) ;; 更改光标的样式

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
;;(set-face-attribute 'default nil :height 160)


(setq make-backup-files nil) ;;关闭备份文件

(delete-selection-mode 1) ;选中输入删除当前文字
(setq initial-frame-alist (quote ((fullscreen . maximized)))) ;;默认全屏
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode);;自动补全括号
(global-hl-line-mode 1);;高亮当前行

;;Automatic loading, external modification
(global-auto-revert-mode 1)

(setq auto-save-default nil)

(setq ring-bell-function 'ignore) ;关闭哔哔

(provide 'init-themes)
