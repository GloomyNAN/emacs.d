;; Consts to check operating system
(defconst *is-mac* (eq system-type 'darwin)
  "Const for system check, macOS.")

(defconst *is-linux* (eq system-type 'gnu/linux)
  "Const for system check, GNU/Linux.")

(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt))
  "Const for system check, Windows or DOS.")

;; Settings for macOS key: Use command as the Meta key
(when *is-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))


(fset 'yes-or-no-p 'y-or-n-p);reset yes/no to y/n


(provide 'init-kbd)
