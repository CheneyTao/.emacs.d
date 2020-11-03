;;
;; Bootstarp use-package
;;
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
	     '("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;
;; Load configuration path
;;
(add-to-list 'load-path "~/.emacs.d/config")

(require 'init-ui)
(require 'init-edit)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key use-package undo-tree neotree linum-relative hungry-delete dired-posframe color-theme-sanityinc-tomorrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
