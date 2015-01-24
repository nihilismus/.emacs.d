# GNU Emacs 24

## Configuración personal

1.  Para obtener el archivo `sbcl.core-for-slime`, ejecuta dentro de `~/.emacs.d/config/`:

```sh
    shell$ sbcl
    * (mapc 'require '(sb-bsd-sockets sb-posix sb-introspect sb-cltl2 asdf))
    * (save-lisp-and-die "sbcl.core-for-slime")
```
