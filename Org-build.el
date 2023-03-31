(require 'widget)
(eval-when-compile
  (require 'wid-edit))
(defvar widget-example-repeat)
(defun start-a-worldbuilding-project()
  "Prompt the user for a path and a directory name, and then create and navigate to the directory, creating subdirectories inside."
  (interactive)
  ;; get a directory path
  (let* ((path (read-directory-name "Enter directory path: "))
  ;; get the project name
         (name (read-string "Enter directory name: "))
  ;; combine the directory path and the project name
         (full-path (concat path name)))
  ;; create the directory
    (make-directory full-path)
  ;; enter the new directory
    (find-file-noselect full-path)
  ;; loop over the list
    (dolist (subdirs '("Story" "World" "Groups" "Details"))
  ;; make the directory
      (make-directory (concat full-path "/" subdirs)))
    (dolist (Story '("Chapters" "Lore" "Myths"))
  ;; make the directory
      (make-directory (concat full-path "/Story/" Story)))
  ;; loop over the list
  (dolist (World '("Characters" "Events" "Species" "Languages" "Cultures"))
  ;; make the directory
      (make-directory (concat full-path "/World/" World)))

;;     (make-directory (concat full-path "/World/" subdir)))
  ;; loop over the list
  (dolist (Groups '("Ideologies" "Teachings" "Organizations" "Schools" "Sciences"))
  ;; make the directory
      (make-directory (concat full-path "/Groups/" Groups)))
  ;; loope over the list
  (dolist (Details '("Skills" "Items" "Ocuupations" "Afflictions" "Resources" "Currencies"))
  ;; make over the directory
      (make-directory (concat full-path "/Details/" Details)))
))
(defun chapters-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New chapters document*")
  ;; select the window
  (select-window (get-buffer-window "*New chapters document*"))
  ;; remove the other window
  (delete-other-windows)
  )
(defun Lore-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Lore document*")
  ;; select the window
  (select-window (get-buffer-window "*New Lore document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Myths-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Myths document*")
  ;; select the window
  (select-window (get-buffer-window "*New Myths document*"))
  ;; remove the other window
  (delete-other-windows))
(defun evolution-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New evolution document*")
  ;; select the window
  (select-window (get-buffer-window "*New evolution document*"))
  ;; remove the other window
  (delete-other-windows))
(defun genetics-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New genetics document*")
  ;; select the window
  (select-window (get-buffer-window "*New genetics document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Characters-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Characters document*")
  ;; select the window
  (select-window (get-buffer-window "*New Characters document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Events-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Events document*")
  ;; select the window
  (select-window (get-buffer-window "*New Events document*"))
  ;; remove the other window
  (delete-other-windows))
(defun languages-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New languages document*")
  ;; select the window
  (select-window (get-buffer-window "*New languages document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Languages-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Languages document*")
  ;; select the window
  (select-window (get-buffer-window "*New Languagesdocument*"))
  ;; remove the other window
  (delete-other-windows))
(defun social-norms-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Cultures document*")
  ;; select the window
  (select-window (get-buffer-window "*New Cultures document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Ideologies-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Ideologies document*")
  ;; select the window
  (select-window (get-buffer-window "*New Ideologies document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Teachings-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Teachings document*")
  ;; select the window
  (select-window (get-buffer-window "*New Teachings document*"))
  ;; remove the other window
  (delete-other-windows))
(defun geography-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New geography document*")
  ;; select the window
  (select-window (get-buffer-window "*New geography document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Schools-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Schools document*")
  ;; select the window
  (select-window (get-buffer-window "*New Schools document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Sciences-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Sciences document*")
  ;; select the window
  (select-window (get-buffer-window "*New Sciences document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Skills-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Skills document*")
  ;; select the window
  (select-window (get-buffer-window "*New communicatiions document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Items-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Items document*")
  ;; select the window
  (select-window (get-buffer-window "*New Items document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Ocuupations-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Ocuupations document*")
  ;; select the window
  (select-window (get-buffer-window "*New Ocuupations document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Afflictions-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Afflictions document*")
  ;; select the window
  (select-window (get-buffer-window "*New Afflictions document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Resources-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Resources document*")
  ;; select the window
  (select-window (get-buffer-window "*New Resources document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Currencies-document ()
  (interactive)
  ;; create a temporary buffer
  (with-output-to-temp-buffer "*New Currencies document*")
  ;; select the window
  (select-window (get-buffer-window "*New Currencies document*"))
  ;; remove the other window
  (delete-other-windows))
(defun Organizations()
  "Create the widgets from the Widget manual."
  (interactive)
  (switch-to-buffer "*Widget Example*")
  (kill-all-local-variables)
  (make-local-variable 'widget-example-repeat) ; change the state of the variable to local make widget-example-repeat

  (let ((inhibit-read-only t)) ; read-only
    (erase-buffer)) ; erase everything
  (remove-overlays) ; remove overlays
  (widget-insert "Organizationsn\n"); 
  (widget-insert "Settings: \n\n"); 
  (widget-create 'editable-field ;
                 :size 13
                 :format "Name: %v " ; Text after the field!
                 "")
  (widget-insert "Information: \n\n"); 
  (widget-create 'editable-field ;
                 :size 13
                 :format "Date of creation: %v " ; Text after the field!
                 "")

  (widget-create 'editable-field ;
                 :size 13
                 :format "Date of end: %v " ; Text after the field!
                 "")
  (widget-create 'editable-field ;
                 :size 13
                 :format "Location type: %v " ; Text after the field!
                 "")
  (widget-create 'editable-field ;
                 :size 13
                 :format "Population: %v " ; Text after the field!
                 "")
  (widget-create 'editable-field ;
                 :size 13
                 :format "Population: %v " ; Text after the field!
                 "")
  (widget-setup)) ; set up the widgets

