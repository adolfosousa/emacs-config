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
(vendor 'yaml-mode)
(vendor 'open-file-in-github)
(vendor 'zencoding)
(vendor 'maxframe)

(load (concat custom_path "windmove"))
(load (concat custom_path "cedet"))
(load (concat custom_path "ecb"))
