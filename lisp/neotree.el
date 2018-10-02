;; NeoTree
(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(global-set-key [f8] 'neotree-toggle)
;; Every time when the neotree window is opened, let it find current file and jump to node.
 (setq neo-smart-open t)
