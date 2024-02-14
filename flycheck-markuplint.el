;;; flycheck-markuplint.el --- Flycheck: Markuplint support  -*- lexical-binding: t; -*-

;; Copyright (C) 2024 SAITOU Keita <keita44.f4@gmail.com>

;; Author: SAITOU Keita <keita44.f4@gmail.com>
;; URL: https://github.com/yonta/flycheck-markuplint
;; Keywords: convenience, tools, languages
;; Version: 0.1
;; Package-Requires: ((emacs "24.1") (flycheck "0.22"))

;;; Commentary:

;; This is flycheck extension for Markuplint.

;;; Code:

(require 'flycheck)

(flycheck-define-checker markuplint
  "A HTML linter using Markuplint."
  :command ("markuplint" "--no-color" "--format=Simple" source)
  :error-patterns
  ((error line-start (+ blank) line ":" column (message) line-end))
  ;; with standard format
  ;;
  ;; :command ("markuplint" "--no-color" source)
  ;; ((error line-start "<markuplint> " (message) " " (file-name) ":" line ":" column line-end))
  :modes (html-mode mhtml-mode web-mode))

;;;###autoload
(defun flycheck-markuplint-setup ()
  "Setup flycheck-markuplint."
  (add-to-list 'flycheck-checkers 'markuplint))

(provide 'flycheck-markuplint)
;;; flycheck-markuplint.el ends here
