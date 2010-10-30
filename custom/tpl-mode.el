(add-to-list 'load-path "~/.emacs.d/vendor/tpl-mode")

(setq auto-mode-alist (cons '("\\.tpl$" . tpl-mode) auto-mode-alist))
(autoload 'tpl-mode "tpl-mode" "Major mode for editing CTemplate files." t)
(add-hook 'tpl-mode-hook '(lambda () (font-lock-mode 1)))
