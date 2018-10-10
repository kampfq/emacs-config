;; Minimal UI
;(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
;;(menu-bar-mode   -1)

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; Font
(add-to-list 'default-frame-alist '(font . "Hack-13"))
(setq-default line-spacing 3)
;; initial window size 80x24 (default terminal)
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))

;;atom theme
(use-package atom-one-dark-theme
  :ensure t
  :init
  (load-theme 'atom-one-dark t))

;; All The Icons
;; icons in neotree
(use-package all-the-icons :ensure t)

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; line numbers (available emacs 26+)
(global-display-line-numbers-mode)

;;show char count
(add-to-list 'global-mode-string '(" %i"))
