# flycheck-markuplint

Flycheck extension for Markuplint

## Requirement

- Markuplint
- Emacs
- flycheck

## Install

1. Install Markuplint
1. Place `flycheck-markuplint.el` in a location included in the Emacs load path.
1. Add the fllowing code to your `init.el`.

``` emacs-lisp
(eval-after-load 'web-mode ;; html-mode, mhtml-mode
  '(progn
    (require 'flycheck-markuplint)
    (flycheck-markuplint-setup)))
```

or, with leaf,

``` emacs-lisp
(leaf flycheck-markuplint
  :el-get (flycheck-markuplint
           :url "https://github.com/yonta/flycheck-markuplint.git")
  :hook (web-mode . flycheck-markuplint-setup))
```
