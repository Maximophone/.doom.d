;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(setq
 projectile-project-search-path '("~/git/")
 python-shell-interpreter "poetry run python"
 flycheck-python-pycompile-executable "poetry run python"
 )

(load! "lisp/ox-dnd")
