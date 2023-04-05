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
  
abckajc

(defun create-file (filename content)
(with-temp-file filename
  (insert content)))

(setq Characters "* Main \n* Secondary \n* Minor")

(setq Plot "* Main \n* Secondary \n* Minor")

(setq World "* Places \n* Cultures \n* Travel" )

(setq Editor
" Chapter 1 \n** Section 1 \nSection 2 \nSection 3 \nSection 4 \nSection 5
* Chapter 2 \n **Section 1\n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 3 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 4 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 5
* Chapter  6 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section
* Chapter 7 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 8 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 9 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 10 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 11 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5
* Chapter 12 \n ** Section 1 \n Section 2 \n Section 3 \n Section 4 \n Section 5" 
	       )
