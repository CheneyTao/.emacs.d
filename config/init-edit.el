;;
;; init-edit.el
;;
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil) ;; Close file manipulation when multiple editors work on the same file
(setq load-prefer-newer t) ;; Load any file that has been modified
(setq mouse-yank-at-point nil)
(setq auto-window-vscroll nil)
(setq scroll-step 2
      scroll-margin 2
      hscroll-step 2
      hscroll-margin 2
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-preserve-screen-position 'always)

(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default fill-column 80)

(fset 'yes-or-no-p 'y-or-n-p)

(electric-pair-mode 1)
(delete-selection-mode 1)
(show-paren-mode 1)

;;
;; undo-tree
;;
(use-package undo-tree
  :ensure t
  :config
  (setq undo-tree-mode t))

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

(provide 'init-edit)

