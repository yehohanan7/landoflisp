(defparameter *nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
			(gardern (you are in a beautiful gardern. there is a well in front of you.))
			(attic (you are in the attic. there is a giant welding torch in the corner.))))

(defparameter *edges* ((living-room (gardern west door)
				    (attic upstairs ladder))
		       (garden (living-room east door))
		       (attic (living-room downstairs ladder))))

(defun describe-location (location nodes)
  (cadr (assoc location nodes)))

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))











