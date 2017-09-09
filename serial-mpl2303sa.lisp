;; Load packages
(load "packages.lisp" :external-format :utf-8)

(in-package :cl-cffi)

;; Load wrapper API
(load "libwiringPi.lisp" :external-format :utf-8)

(defun main ()
  (let (fd input-data)
    ;; Serial Open. For RaspberryPi3, use "/dev/ttyS0".
    (setf fd (serialOpen "/dev/ttyAMA0" 115200))
    (if (< fd 0)
        (return-from main nil))

    ;; Read text
    (setf input-data (read-line))

    ;; Send text
    (loop :for char :across input-data
       :do (serialPutchar fd (char-code char)))

    ;; New line LF
    (serialPutchar fd #X0A)

    ;; Serial Close
    (serialClose fd)))

;; Executable!!!
(main)
