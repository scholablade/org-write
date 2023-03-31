(defcustom org-write-directory "~/org-write"
    "Directory for org-write"
    :type 'directory
:type 'string
)

(defun org-write-mode ()
	 (interactive)
       (dired-create-directory org-write-directory)
       (let* ((path org-write-directory)
	      )
(find-file-noselect path)
(create-file (concat path "/" "Summary.org") Summary)
(create-file (concat path "/" "General.org") General)
(create-file (concat path "/" "World.org" World))
(create-file (concat path "/" "Plot.org" Plot))
(create-file (concat path "/" "Editor.org" Editor))
))

(defun Characters ()
  (setq Characters-path (concat path "/Characters/"))
(dolist (Characters-subdirs '("Main" "Secondary" "Minor"))
  (make-directory (concat Characters-path "/" Characters-subdirs))))
