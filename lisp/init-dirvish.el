;;; init-dirvish.el

;; github https://github.com/alexluigit/dirvish
(use-package dirvish
  :init
  (dirvish-override-dired-mode)
  :custom
  (dirvish-quick-access-entries ; It's a custom option, `setq' won't work
   '(("h" "~/"                          "Home")
     ("d" "~/Downloads/"                "Downloads")
     ("i" "~/Library/Mobile Documents/com~apple~CloudDocs/" "iCloud")))
  :config
  (dirvish-peek-mode) ; Preview files in minibuffer
  (dirvish-side-follow-mode) ; similar to `treemacs-follow-mode'
  (set-face-attribute 'ansi-color-blue nil :foreground "#FFFFFF")
  (setq dirvish-use-header-line 'global
        dirvish-mode-line-format '(:left (sort symlink) :right (omit yank index))
        dirvish-preview-dispatchers '(image gif video audio epub pdf archive)
        dirvish-attributes       '(all-the-icons file-time file-size collapse subtree-state vc-state git-msg)
        delete-by-moving-to-trash t)
  ;; fix Listing directory failed but ‘access-file’ worked in MacOs
  (if (not *is-mac*)
      (progn
        (setq dired-listing-switches "-la --almost-all --human-readable --group-directories-first --no-group")))
  ;;or  Link: https://github.com/d12frosted/homebrew-emacs-plus/issues/383#issuecomment-899157143
;;  (setq insert-directory-program "gls"
;;        dired-use-ls-dired t)
  :bind ; Bind `dirvish|dirvish-side|dirvish-dwim' as you see fit
  (("C-x d" . 'dirvish)
  :map dirvish-mode-map ; Dirvish inherits `dired-mode-map'
   ("a"   . dirvish-quick-access)
   ("f"   . dirvish-file-info-menu)
   ("y"   . dirvish-yank-menu)
   ("N"   . dirvish-narrow)
   ("^"   . dirvish-history-last)
   ("h"   . dirvish-history-jump) ; remapped `describe-mode'
   ("s"   . dirvish-quicksort)    ; remapped `dired-sort-toggle-or-edit'
   ("v"   . dirvish-vc-menu)      ; remapped `dired-view-file'
   ("TAB" . dirvish-subtree-toggle)
   ("M-f" . dirvish-history-go-forward)
   ("M-b" . dirvish-history-go-backward)
   ("M-l" . dirvish-ls-switches-menu)
   ("M-m" . dirvish-mark-menu)
   ("M-t" . dirvish-layout-toggle)
   ("M-s" . dirvish-setup-menu)
   ("M-e" . dirvish-emerge-menu)
   ("M-j" . dirvish-fd-jump)))

(provide 'init-dirvish)
