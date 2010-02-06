(add-to-list 'load-path "~/.emacs.d/vendor")

(load "~/.emacs.d/custom/defuns")
(load "~/.emacs.d/custom/bindings")
(load "~/.emacs.d/custom/global")

(vendor 'rinari)
(vendor 'markdown-mode)
(vendor 'cheat)
(vendor 'gist)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
(vendor 'open-file-in-github)
(vendor 'zencoding)

(load "~/.emacs.d/custom/zencoding-load")
