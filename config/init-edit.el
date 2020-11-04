;;
;; init-edit.el
;;
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil) ;; Close file manipulation when multiple editors work on the same file
(setq load-prefer-newer t) ;; Load any file that has been modified

(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default fill-column 80)

(electric-pair-mode 1)
(delete-selection-mode 1)
(show-paren-mode 1)

;;
;; undo-tree
;;
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

;;
;; hungry-delete
;;
(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

;;
;; which-key
;;
(use-package which-key
  :ensure t
  :config
  (which-key-mode))
(use-package which-key-posframe
  :ensure t
  :config
  (which-key-posframe-mode))

(provide 'init-edit)

