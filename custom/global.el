(cua-mode nil)
(follow-mode t)
(show-paren-mode)
(transient-mark-mode t)
(setq user-full-name "Adolfo Sousa")
(setq user-mail-address "adolfosousa@gmail.com")
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
(global-hl-line-mode t)
(set-face-background 'hl-line "light yellow")

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

;(add-to-list 'load-path "~/.emacs.d/vendor/ruby-block")
;(require 'ruby-block)
;(ruby-block-mode t)
;(setq ruby-block-highlight-toggle 'overlay)
