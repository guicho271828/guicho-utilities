
(in-package :cl-user)
(defpackage guicho-utilities
  (:use :cl
        :cl-syntax
        :introspect-environment
        :annot
        :annot.class
        :annot.eval-when
        :annot.doc
        :annot.slot
        :trivia
        :iterate
        :alexandria
        :closer-mop)
  (:shadowing-import-from :cl
                          :standard-generic-function
                          :defmethod
                          :defgeneric
                          :standard-method
                          :standard-class))
