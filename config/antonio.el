;; Información personal

(setq user-full-name "Antonio Hernández Blas")
(setq user-mail-address "hba.nihilismus@gmail.com")

;; Theme

(load-theme 'katester t)

;; Fuente
(custom-set-faces
 '(default (
            (t
             (:inherit nil
                       :stipple nil
                       :inverse-video nil
                       :box nil
                       :strike-through nil
                       :overline nil
                       :underline nil
                       :slant normal
                       :weight thin
                       :height 100
                       :width normal
                       :family "DejaVu Sans Mono")))))

;; Asignar nombres únicos a los buffers

(custom-set-variables
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))

;; Activar la codificación UTF-8 por default

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Desactivar la pantalla de bienvenida

(setq inhibit-splash-screen t)

;; Vacíar el scratch al inicio

(setq initial-scratch-message nil)

;; Responder con y o n en lugar de 'yes' o 'no'

(defalias 'yes-or-no-p 'y-or-n-p)

;; Mostrar los números de líneas

(global-linum-mode t)
(setq column-number-mode t)
(setq linum-disabled-modes
      '(term-mode help-mode inferior-sml-mode nrepl-mode comint-mode cider-repl-mode))
(defun linum-on ()
  (unless (or (minibufferp) (member major-mode linum-disabled-modes))
    (linum-mode 1)))

;; Configuración externa de otros modos

(require 'slime-conf)
(require 'sml-conf)
(require 'auto-complete-mode-conf)

(provide 'antonio)
