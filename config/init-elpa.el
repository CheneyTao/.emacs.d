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
;; restart emacs
;;
(use-package restart-emacs
  :ensure t)

(provide 'init-elpa)

