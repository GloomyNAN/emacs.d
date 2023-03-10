;;; init-os.el ---  Consts operating system
;;; Commentary:
;;; Code:

(defconst *is-mac* (eq system-type 'darwin)
  "Const for system check, macOS.")

(defconst *is-linux* (or (eq system-type 'gnu) (eq system-type 'gnu/linux) (eq system-type 'gnu/kfreebsd))
  "Const for system check, GNU/Linux.")

(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt))
  "Const for system check, Windows or DOS.")

(when *is-mac*
  
  ;; Settings for macOS key: Use command as the Meta key
  (setq mac-right-command-modifier 'meta)
  (setq mac-right-option-modifier 'super)

  (use-package reveal-in-osx-finder
    :bind ("C-x f" . 'reveal-in-osx-finder))
  (use-package osx-dictionary
    :bind("C-x C-d" . 'osx-dictionary-search-word-at-point))
  (use-package counsel-osx-app
    :bind("C-x /" . 'counsel-osx-app))
  (use-package osx-trash
    :init (osx-trash-setup)
    :config
    (setq delete-by-moving-to-trash t))

)


(provide 'init-os)
;;; init-kbd ends here
