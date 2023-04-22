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
    (create-file (concat path "/" "Characters.org") Characters)
    (create-file (concat path "/" "General.org") General)
    (create-file (concat path "/" "World.org") World)
    (create-file (concat path "/" "Plot.org") Plot)
    (create-file (concat path "/" "Editor.org") Editor)
    ))

(defun create-file (filename content)
(with-temp-file filename
  (insert content)))

(setq General "* Book information \n #+title \n #+subtilte \n #+volume \n #+genre \n #+license \n * Author \n #+name \n #+email")

(setq Summary "* Situation \n* Summary \n** One sentence \n** One paragraph \n** One page \n** Full")

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

(setq var_character (concat org-write-directory "/" "Characters.org"))
(setq var_world (concat org-write-directory "/" "World.org"))
(setq var_plot (concat org-write-directory "/" "Plot.org"))
(defun org-write-templates()
  (interactive)
  (setq org-capture-templates
	'( 
	  ("M" "Character[Main]" entry
	   (file+headline var_character "Main")
	   "** \n*** Motivation\n*** Goal \n*** Conflict \n*** Epiphany \n*** One sentence summary \n*** One paragraph summary"
	   )
	     	("S" "Character[Secondary]" entry
	     	 (file+headline var_character "Secondary")
	     	 "** \n*** Motivation\n*** Goal \n*** Conflict \n*** Epiphany \n*** One sentence summary \n*** One paragraph summary"
	     	 )
	     	("m" "Character[Minor]" entry
	     	 (file+headline var_character "Minor")
	     	 "** \n*** Motivation\n*** Goal \n*** Conflict \n*** Epiphany \n*** One sentence summary \n*** One paragraph summary"
	     	 )
	     	("P" "Places" entry
	     	 (file+headline var_world "Places")
	     	 "** \n*** Description"
	     	 )
	     	("C" "Cultures" entry
	     	 (file+headline "Cultures")
	     	 "** \n** Description"
	     	 )
	     	("T" "Travel" entry
	     	 (file+headline var_world "Travel")
	     	 "** \n*** Description"
	     	 )
	     	("p" "Plot[Main]" entry
	     	 (file+headline var_plot "Main")
	     	 "** Plot \n*** Character(s) \n*** Description \n*** Result"
	     	 )
	     	("s" "Plot[Secondary]" entry
	     	 (file+headline var_plot "Secondary")
	     	 "** Plot \n*** Character(s) \n*** Description \n*** Result"
	     	 )
	     	("t" "Plot[Minor]" entry
	     	 (file+headline var_plot "Minor")
	     	 "** Plot \n*** Character(s) \n*** Description \n*** Result"
	     	 )
	  )
	)
  (org-capture)
  )
