(= (get-left-child ($v $l $r)) $l)
(= (get-right-child ($v $l $r)) $r)

(: (max-depth (-> Expression Number)))
(= (max-depth $tree)
   (if (== $tree ())
     0
     (+ 1 (max 
            (max-depth (get-left-child $tree))
            (max-depth (get-right-child $tree))
            )
        )
     )
   )

(: max (-> Number Number Number))
(= (max $x $y) (if (>= $x $y) $x $y))

!(assertEqual (max-depth (1 (2 () ()) (3 () ()))) 2)
