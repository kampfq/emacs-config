;; Minimal UI
(scroll-bar-mode -1)
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

;; scale windows in split mode
(use-package golden-ratio
  :defer t
  :ensure t
  :diminish " φ"
  :config
  (golden-ratio-mode 1)
  :init
  (setq golden-ratio-auto-scale t))

;; show char count in mode line
(add-to-list 'global-mode-string '(" %i"))

(use-package olivetti
  :defer t
  :ensure t
  :bind (("C-c M o" . olivetti-mode)
         :map
         olivetti-mode-map
         ("C-c [" . nil)
         ("C-c ]" . nil))
  :init
  (setq olivetti-body-width 80))

(use-package imenu-list
  :ensure t
  :bind (("C-c i" . imenu-list-smart-toggle))
  :config
  (setq imenu-list-focus-after-activation t
        imenu-list-auto-resize nil
	imenu-list-position 'right
	))


