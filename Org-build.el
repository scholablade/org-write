  (defun start-a-worldbuilding-project()
  "Prompt the user for a path and a directory name, and then create and navigate to the directory, creating subdirectories inside."
  (interactive)
  ;; Get a directory path
  (let* ((path (read-directory-name "Enter directory path: "))
  ;; Get the project name
         (name (read-string "Enter directory name: "))
  ;; combine the directory path and the project name
         (full-path (concat path name)))
  ;; create the directory
    (make-directory full-path)
  ;; enter the new directory
    (find-file-noselect full-path)
  ;; iterate over the list 
    (dolist (subdir '("Biology" "Culture" "Miscellaneous" "Physics" "Technology"))
  ;; make the directories with full-path
      (make-directory (concat full-path "/" subdir)))



    
