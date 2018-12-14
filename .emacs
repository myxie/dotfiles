;; Remove unnecessary gui 
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1) 

;; Text mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 78)

;; Latex mode
(add-hook 'Latex-mode-hook 'turn-on-auto-fill)

;Themes 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)


;; Date function for journalling
(defun myxie/insert-date ()
  (interactive)
  (insert (shell-command-to-string "date '+%A %d %B %Y'")))

(global-set-key (kbd "C-x M-d") 'myxie/insert-date)

;; Open terminal to the right
(defun myxie/new-terminal ()
  (interactive)
  (split-window-right)
  (other-window -1)
  (ansi-term "bash"))
  

(global-set-key (kbd "C-x M-t") 'myxie/new-terminal)

;; Fonts
(add-to-list 'default-frame-alist '(font . "Monaco-12" ))
(set-face-attribute 'default t :font "Monaco-12" )

;; Insert licenses/TeX preamble for new files
(auto-insert-mode)  ;;; Adds hook to find-files-hook
(setq auto-insert-directory "~/.templates/") ;;; Or use custom, *NOTE* Trailing slash important
(define-auto-insert "\.c" "c-template.c")
(define-auto-insert "\.py" "py-template.py")
(define-auto-insert "\.tex" "tex-template.tex")



;; org mode
;; org mode
;;(add-to-list 'auto-mode-alist '("\\Dropbox\\.org\\'" . org-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t nil)))
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

;; no bold
 (mapc
  (lambda (face)
    (set-face-attribute face nil :weight 'normal))
  (face-list))
;;docview
(require 'doc-view)
(setq doc-view-resolution 400)
(setq doc-view-continuous 1)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t nil)))
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

;; no bold
 (mapc
  (lambda (face)
    (set-face-attribute face nil :weight 'normal))
  (face-list))


;;docview
(require 'doc-view)
(setq doc-view-resolution 400)
(setq doc-view-continuous 1)

;; Variables set by Monokai theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("2925ed246fb757da0e8784ecf03b9523bccd8b7996464e587b081037e0e98001" default)))
 '(fci-rule-color "#3C3D37")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(magit-diff-use-overlays nil)
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))

