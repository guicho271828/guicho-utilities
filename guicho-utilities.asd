#|
This file is a part of guicho-utilities project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

#|
Personal utilities for Masataro Asai(guicho2.71828@gmail.com).

Author: guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage guicho-utilities-asd
  (:use :cl :asdf))
(in-package :guicho-utilities-asd)

(defsystem guicho-utilities
  :version "0.1"
  :author "guicho"
  :license "LLGPL"
  :depends-on (:iterate
		:alexandria
		:introspect-environment
                :trivia
                :closer-mop
		:cl-syntax-annot)
  :components ((:module "src"
			:serial t   	
			:components
			((:file :package)
			 (:file :environment)
			 (:file :declaim)
			 (:file :typed-ops)
			 (:file :functions)
			 (:file :utilities)
                         (:file :combinations)
			 (:file :macros)
			 (:file :random)
			 (:file :object)
			 (:file :classes)
			 (:file :debug)
			 (:file :reader)
			 (:file :array)
			 (:file :symbol)
			 (:file :condition))))
  :description "Personal utilities for Masataro Asai(guicho2.71828@gmail.com)."
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op guicho-utilities-test))))
