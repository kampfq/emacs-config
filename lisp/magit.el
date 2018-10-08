;; add magit for git
(use-package magit
  :ensure t)

(use-package git-gutter
  :ensure t
  :diminish git-gutter-mode
  :config (global-git-gutter-mode))
