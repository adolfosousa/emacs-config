(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom_path "~/.emacs.d/custom/")
(load (concat custom_path "defuns"))
(load (concat custom_path "bindings"))
(load (concat custom_path "global"))

(vendor 'rinari)
(vendor 'markdown-mode)
(vendor 'cheat)
(vendor 'gist)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
(vendor 'open-file-in-github)
(vendor 'zencoding)

(load (concat custom_path "zencoding-load"))
(load (concat custom_path "windmove"))
