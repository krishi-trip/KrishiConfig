(add-to-list 'load-path "~/neotree")
  (require 'neotree)
  (global-set-key (kbd "C-x C-\\") 'neotree-toggle)

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

