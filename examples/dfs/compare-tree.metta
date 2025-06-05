(= (dfs $tr1 $tr2)
   (if (and (== $tr1 ()) (== $tr2 ()))
     True
     (let* (
            (($h1 $t1) (decons-atom $tr1))
            (($h2 $t2) (decons-atom $tr2))
            )
       (if (not (== $h1 $h2))
         False
         (dfs $t1 $t2)
         )
       )
     )
   )

!(assertEqual (dfs ( 1 (2 () ()) (3 () ()) ) ( 1 (2 () ()) (3 () ()) )) True )
!(assertEqual (dfs ( 1 2 () ) ( 1 () 2 )) False )
!(assertEqual (dfs ( 1 (2 () ()) (1 () ()) ) ( 1 (1 () ()) (2 () ()) )) False)
