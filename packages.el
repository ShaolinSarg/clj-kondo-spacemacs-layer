;;; packages.el --- clojure-dev layer packages file for Spacemacs.

(defconst clj-kondo-lint-packages
  '(flycheck
    flycheck-clj-kondo))

(defun clj-kondo-lint/init-flycheck-clj-kondo ()
  (use-package flycheck-clj-kondo
    :ensure t))

(defun clj-kondo-lint/post-init-flycheck ()
  (add-hook 'clojure-mode-hook 'flycheck-mode))
