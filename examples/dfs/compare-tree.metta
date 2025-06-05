(= (dfs $tr1 $tr2)
   (if (and (== $tr1 ()) 
            (== $tr2 ())
      )
     True
      (if (not 
            (== (car-atom $tr1) 
                (car-atom $tr2)
                )
            )
        False
        (dfs (cdr-atom $tr1) (cdr-atom $tr2))
        )
     )
   )

!(assertEqual (dfs ( 1 (2 () ()) (3 () ()) ) ( 1 (2 () ()) (3 () ()) )) True )
!(assertEqual (dfs ( 1 2 () ) ( 1 () 2 )) False )
!(assertEqual (dfs ( 1 (2 () ()) (1 () ()) ) ( 1 (1 () ()) (2 () ()) )) False)
