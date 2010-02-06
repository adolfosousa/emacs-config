(add-to-list 'load-path "~/.emacs.d/vendor")

(load "~/.emacs.d/custom/defuns")
(load "~/.emacs.d/custom/bindings")
(load "~/.emacs.d/custom/global")

(vendor 'rinari)
(vendor 'markdown-mode)
(vendor 'cheat)
