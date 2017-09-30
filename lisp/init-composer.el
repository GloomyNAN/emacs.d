(when (maybe-require-package 'composer))

; (composer-get-config "bin-dir") ;=> "vendor/bin"

; (composer-get-bin-dir) ;=> "/path/to/current-project/vendor/bin"

; (let ((composer-global-command t))
  ; (composer-get-bin-dir)) ;=> "/home/your-name/.composer/vendor/bin"
(provide 'init-composer)