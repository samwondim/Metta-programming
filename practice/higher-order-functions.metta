;`map` 
;Definition
;The map function applies a given function to each element of a sequence (e.g., a list)
;and returns a new sequence with the transformed elements. It transforms data without modifying the original sequence.
;
;Signature: (: map (-> $function $list Expression))
;TODO: 
;Implement a my_map function that takes a function and a sequence and returns a new list with the function applied to each element.

;`filter`
;Definition
;The filter function applies a predicate function (returning True/False)
;to each element of a sequence and returns a new sequence containing only the elements for which the predicate returns True.
;
;Signature: (: filter (-> (-> $x Bool) $list $accumulator Expression))))
;TODO:
;Implement a my_filter function that takes a predicate function and a sequence and returns a new 
;list containing only elements that satisfy the predicate.

;`fold`
;Definition
;The fold (or reduce) function combines elements of a sequence into a single value using a binary function and an initial value. 
;It processes the sequence iteratively, accumulating a result.
;
;Signature: (: foldr (-> (-> $a $b $b) $b $c $d)) ; a function that folds from right to left.
;Signature: (: foldl (-> (-> $a $b $d) $b $c $d)) ; a function that folds from left to right.
;TODO:
;Implement a my_foldr function that takes a binary function, a sequence, and an initial value, 
;and returns the accumulated result by processing the sequence from right to left.
