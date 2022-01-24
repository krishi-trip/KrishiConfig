(setq inhibit-startup-message t)

(load-theme 'tango-dark)

(add-hook 'emacs-startup-hook 'my-startup-fcn)
(defun my-startup-fcn ()
  "do fancy things"
  (let ((my-buffer (get-buffer-create "my-buffer")))
    (with-current-buffer my-buffer
      ;; this is what you customize
      (insert "\n\n\n\n\n\n\n\n
                                                                                         `..`
                                                                                       ````+ `.`
                                                                                   /o:``   :+ ``
                                                                               .+//dho......y/..`
                                                                               `sdddddhysso+h` ``
                                                                                 /ddd+`..` +. .`
                                                                                -hos+    `.:```
                                                                              `./dddyo+//osso/:`
                                                                            `/o++dddddddddddddod-
                                                                           `// -y+:sdddddsddsy.dy
                                                                               /o   `..```h+`y+/h+`
                                                                               .s       `++``o:  ``
                                                                                       `:- `:-




                                                                  “Design is where science and art break even.”

                                                                                         
"))
    (switch-to-buffer my-buffer)))

;; add and configure line numbers and column numbers
(setq line-number-mode t)
(setq column-number-mode t)
(global-linum-mode 1)
(setq linum-format "%d ")

;; set a dedicated directory for backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;; set a backup policy
(setq make-backup-files t)
(setq version-control t)
(setq kept-new-versions 5)
(setq delete-old-versions t)

;; no tab characters in whitespace
(setq-default indent-tabs-mode nil)

;; handle indentation with 4 white spaces
(setq-default c-default-style "linux"
              c-basic-offset 4)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; handle multi-line inline lambda expressions
(setq c-offsets-alist '((arglist-cont-nonempty . 0)))

;; auto remove trailing white space
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; highlight lines that exceed some column limit
(setq-default
 whitespace-line-column 100
 whitespace-style '(face lines))
(add-hook 'prog-mode-hook #'whitespace-mode)

;; run check1302 on saved version of current file with M-x check1302
(defun check1302 ()
  (interactive)
  (when (eq major-mode 'java-mode)
    (shell-command
     (format "check1302 %s" buffer-file-name))))
