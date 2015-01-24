;; Lista de paquetes

(defvar antonio/paquetes
  '(better-defaults

    paredit
    auto-complete
    popup

    sml-mode

    cider
    ac-cider
    clojure-mode
    clojure-cheatsheet

    slime)
  "antonio/paquetes")

;; Repositorio MELPA

(require 'package)

(add-to-list 'package-archives
  '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (package antonio/paquetes)
  (when (not (package-installed-p package))
    (package-install package)))

(provide 'paquetes)
