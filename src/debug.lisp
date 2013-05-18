
(in-package :guicho-utilities)
(enable-annot-syntax)

@export
(defun break+ (&rest args)
  (break "~{~a~%~}" args))

@export
(defun break* (&rest args)
  (iter (for arg in args)
		(break "~a" arg)))

@eval-always
@export
(defmacro with-profiling ((&key packages) &body body)
  `(progn
     ,@(iter (for package in packages)
	     (collect `(swank::profile-package ,package t t)))
     (unwind-protect
	  ,@body
       (swank::profile-report)
       (swank::unprofile-all))))