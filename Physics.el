(defun test()
 (interactive)
 (switch-to-buffer "*Widget Example*")
 (kill-all-local-variables)
 (make-local-variable 'widget-example-repeat) ; change the state of the variable to local make widget-example-repeat
 (let ((inhibit-read-only t)) ; read-only
   (erase-buffer)) ; erase everything
 (remove-overlays) ; remove overlays
 (let ((counter 0)(field-names '("Name" "Other")))
   (while (< counter 2)
(widget-create 'editable-field
                    :size 13
                    :format (format "%s: %%v \n\n" (nth counter field-names) ""))  
 (setq counter (1+ counter))
 (widget-setup)) ; set up the widgets
 ))
