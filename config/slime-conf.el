;; Configuración para SBCL/SLIME

(setq sbcl-core-file
    (concat (getenv "HOME") "/.emacs.d/config/sbcl.core-for-slime"))

(setq slime-lisp-implementations
    `((sbcl ("sbcl" "--noinform" "--core" ,sbcl-core-file) :coding-system utf-8-unix)))

(setq slime-net-coding-system 'utf-8-unix)

(require 'slime-autoloads)

(slime-setup)

(provide 'slime-conf)
