;; define path where org sheets are
(setq org-agenda-files '("~/org"))
;; 
(setq org-log-done 'time)

(setq org-drawers (quote ("PROPERTIES" "CLOCKTABLE" "LOGBOOK" "CLOCK")))
(setq org-todo-keywords
  '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
(setq org-log-into-drawer t)
;;(require 'org-bullets)
;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(use-package org-bullets
  :ensure t
  :commands (org-bullets-mode)
  :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

