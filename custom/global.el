(cua-mode nil)
(follow-mode t)
(show-paren-mode)
(transient-mark-mode t)
(setq vc-handled-backends nil)
(setq mac-emulate-three-button-mouse nil)
(setq gist-view-gist t)
(setq search-highlight t)
(setq column-number-mode t)
(setq show-paren-style 'parentheses)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (functionp 'menu-bar-mode)
  (menu-bar-mode 1))
(when (functionp 'scroll-bar-mode)
  (scroll-bar-mode 1))

(when (string-match "apple" system-configuration)
  (create-fontset-from-fontset-spec
   (concat "-apple-monaco-medium-r-normal--14-*-*-*-*-*-fontset-monaco,"
           "ascii:-apple-monaco-medium-r-normal--14-100-*-*-m-100-mac-roman"))
  (setq initial-frame-alist `((font . "fontset-monaco")))
  (setq default-frame-alist initial-frame-alist))

;(require 'windmove)
;(windmove-default-keybindings 'shift)
;
;(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
;(require 'yasnippet)
;(yas/initialize)
;(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
;(yas/load-directory "~/.emacs.d/vendor/yasnippets-rails/rails-snippets")
;
;(add-to-list 'load-path "~/.emacs.d/vendor/textmate")
;(require 'textmate)
;(textmate-mode)
;
;(add-to-list 'load-path "~/.emacs.d/vendor/maxframe")
;(require 'maxframe)
;(setq mf-max-width 1280)
;(add-hook 'window-setup-hook 'maximize-frame t)
;
;(add-to-list 'load-path "~/.emacs.d/vendor/whitespace")
;(require 'whitespace)
;(setq whitespace-style '(trailing lines space-before-tab indentation space-after-tab)
;      whitespace-line-column 100)
;
;(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")
;(add-to-list 'load-path "~/.emacs.d/vendor/ecb")
;(require 'ecb)
;(require 'ecb-autoloads)
;
;(setq load-path (cons (expand-file-name "~/.emacs.d/vendor/rails-reloaded") load-path))
;(require 'rails-autoload)
;
;(add-to-list 'load-path "~/.emacs.d/vendor/ruby-electric")
;(require 'ruby-electric)
;
;(add-to-list 'load-path "~/.emacs.d/vendor/ruby-block")
;(require 'ruby-block)
;(ruby-block-mode t)
;(setq ruby-block-highlight-toggle 'overlay)

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