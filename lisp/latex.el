(use-package auctex
  :defer t
  :ensure t
  :config
  (setq TeX-auto-save t))
(use-package latex-preview-pane
  :ensure t
  :config
  (latex-preview-pane-enable))

;; preview fit page to screen
(defadvice doc-view-display (after fit-width activate)
  (doc-view-fit-width-to-window))

;; multi file mode
(setq-default TeX-master nil)
