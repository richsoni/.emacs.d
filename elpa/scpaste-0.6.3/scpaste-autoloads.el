;;; scpaste-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (scpaste-index scpaste-region scpaste) "scpaste"
;;;;;;  "scpaste.el" (21629 53540 0 0))
;;; Generated autoloads from scpaste.el

(autoload 'scpaste "scpaste" "\
Paste the current buffer via `scp' to `scpaste-http-destination'.

\(fn ORIGINAL-NAME)" t nil)

(autoload 'scpaste-region "scpaste" "\
Paste the current region via `scpaste'.

\(fn NAME)" t nil)

(autoload 'scpaste-index "scpaste" "\
Generate an index of all existing pastes on server on the splash page.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("scpaste-pkg.el") (21629 53540 180569
;;;;;;  0))

;;;***

(provide 'scpaste-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; scpaste-autoloads.el ends here
