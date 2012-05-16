(defun lotto(col max) 
	(setf *random-state* (make-random-state t))
	(setf game (list))
	
	(loop for i from 1 to 100 while (< (list-length game) col) 
		do 
		(setf r (random max))
		(if (= (list-length (member r game)) 0)
			(if (> r 0)
				(push r game)
				; (format t "0=~S~%" r)
			)
			; (format t "r=~S~%" r)
		)
		; (push r game)
	)
	(sort game #'<)
	game
)
