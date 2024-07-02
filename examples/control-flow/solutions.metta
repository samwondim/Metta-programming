;abs function
(: abs (-> Number Number))
(= (abs $x)
  if (< $x 0)(* $x -1)($x)
)

;factorial function
(: factorial (-> Number Number))
(= (factorial $x)
  (case $x
    (0 1)
    ($_ (* factorial (- $x 1)))
  )
)

;fibonacci generator
(: fibonacci (-> Number Number))
(= (fibonacci $x)
  (case $x
    (0 0)
    (1 1)
    ($_ (+ fibonacci (- $x 1) fibonacci (- $x 2)))
  )
)

;a function to check whether a number is a power of four
(: isPowerOfFour (-> Number Number))
(= (isPowerOfFour $x)
  (if (== $x 1) True ((if (< $x 1) False (isPowerOfFour (/ $x 4)))))
)


