;;; project-local-variables-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (plv-find-project-file) "project-local-variables"
;;;;;;  "project-local-variables.el" (19129 919))
;;; Generated autoloads from project-local-variables.el

(autoload (quote plv-find-project-file) "project-local-variables" "\
Look up the project file in and above `dir'.

\(fn DIR MODE-NAME)" nil nil)

(defadvice hack-local-variables (before project-local-variables activate) "\
Load the appropriate .emacs-project files for a file." (let* ((full-name (symbol-name major-mode)) (mode-name (if (string-match "\\(.*\\)-mode$" full-name) (match-string 1 full-name) full-name)) (pfile (plv-find-project-file default-directory (concat "-" mode-name))) (gfile (plv-find-project-file default-directory ""))) (save-excursion (when gfile (load gfile)) (when pfile (load pfile)))))

;;;***

;;;### (autoloads nil nil ("project-local-variables-pkg.el") (19129
;;;;;;  919 886712))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; project-local-variables-autoloads.el ends here
