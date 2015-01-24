;; Directorios en donde emacs encontrará archivos Elisp

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'custom-theme-load-path "~/.emacs.d/config")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Paquetes que uso desde el repositorio MELPA

(require 'paquetes)

;; Configuración personal

(require 'antonio)
