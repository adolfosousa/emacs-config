(add-to-list 'load-path "~/.emacs.d/vendor")

(load "~/.emacs.d/custom/global")
(load "~/.emacs.d/custom/defuns")
(load "~/.emacs.d/custom/bindings")

(transient-mark-mode 1)

(show-paren-mode)
(setq show-paren-style 'parentheses)

(load "~/.emacs.d/vendor/nxhtml/autostart.el")

(require 'windmove)
(windmove-default-keybindings 'shift)

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/vendor/yasnippets-rails/rails-snippets")

(add-to-list 'load-path "~/.emacs.d/vendor/textmate")
(require 'textmate)
(textmate-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/maxframe")
(require 'maxframe)
(setq mf-max-width 1280)
(add-hook 'window-setup-hook 'maximize-frame t)

(add-to-list 'load-path "~/.emacs.d/vendor/whitespace")
(require 'whitespace)
(setq whitespace-style '(trailing lines space-before-tab indentation space-after-tab)
      whitespace-line-column 100)

(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")
(add-to-list 'load-path "~/.emacs.d/vendor/ecb")
(require 'ecb)
(require 'ecb-autoloads)

(setq load-path (cons (expand-file-name "~/.emacs.d/vendor/rails-reloaded") load-path))
(require 'rails-autoload)

(add-to-list 'load-path "~/.emacs.d/vendor/ruby-electric")
(require 'ruby-electric)

(add-to-list 'load-path "~/.emacs.d/vendor/ruby-block")
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle 'overlay)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left15" (0.26282051282051283 . 0.4772727272727273) (0.26282051282051283 . 0.5)) ("left14" (0.1962025316455696 . 0.7272727272727273) (0.1962025316455696 . 0.25)) ("left8" (0.2088607594936709 . 0.2727272727272727) (0.2088607594936709 . 0.22727272727272727) (0.2088607594936709 . 0.29545454545454547) (0.2088607594936709 . 0.18181818181818182)))))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("~/projects")))
 '(ecb-tip-of-the-day nil))
(setq ecb-layout-name "left15")

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
