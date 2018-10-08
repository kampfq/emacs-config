;;(require 'org-bullets)
;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(use-package org-bullets
  :ensure t
  :commands (org-bullets-mode)
  :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
