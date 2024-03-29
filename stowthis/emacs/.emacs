(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

; fix org-cycle with evil mode
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

; easier link navigation for org
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "M-n") 'org-next-link)
  (define-key org-mode-map (kbd "M-p") 'org-previous-link))

; hide top menubar
(menu-bar-mode -1)

; org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . nil) ; disabled example
   (python . t)
  )
)

; nicer window resizing
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
