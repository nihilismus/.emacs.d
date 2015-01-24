;; Configuración para auto-complete

(require 'auto-complete)
(require 'auto-complete-config)

;; Desactiv auto-complete en el minibuffer

(defun auto-complete-mode-maybe ()
      (unless (minibufferp (current-buffer))
            (auto-complete-mode 1)))

(global-auto-complete-mode t)
(ac-config-default)

;; Solución para evitar el problema con flyspell-mode

(ac-flyspell-workaround)

;; Solución para evitar que linum-mode agregue el

;; Número de línea en el menú de auto-complete

(ac-linum-workaround)

(provide 'auto-complete-mode-conf)
