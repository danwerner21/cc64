
\ This is a custom implementation of tmpheap for the X16 which
\ allocates the tmpheap in a RAM bank and moves definitons prefixed
\ with || or within a ||on to ||off range there.
\ tmp-clear will remove all words on the tmpheap, wheras regular clear
\ will remove all words on tmpheap and heap together.

\ Other than the reference tmpheap living on the regular heap, this
\ custom tmpheap needs no initialization as its position and
\ size (8k) is fixed.

~ User tmpheap[
~ User tmpheap>
~ User ]tmpheap

 1 $0000 c!  $a000 tmpheap[ !  $c000 dup ]tmpheap ! tmpheap> !

~ : tmp-hallot  ( size -- addr )
    tmpheap> @ swap -
    dup tmpheap[ @ u< abort" tmp heap overflow"
    dup tmpheap> ! ;

| : tmp-heapmove   ( from from size -- from offset )
   dup tmp-hallot  swap cmove
   tmpheap> @ over - ;

| : tmp-heapmove1x   ( from size -- from offset )
   tmp-heapmove  ?headmove-xt off ;

~ : ||     ['] tmp-heapmove1x  ?headmove-xt ! ;
~ : ||on   ['] tmp-heapmove    ?headmove-xt ! ;
~ : ||off  ?headmove-xt off ;


| : remove-tmp-words-in-voc  ( voc -- )
  BEGIN dup @ ?dup WHILE  ( thread next-in-thread )
    dup tmpheap[ @ ]tmpheap @ uwithin IF  ( thread next-in-thread )
      @ ?dup IF ( thread next-next-in-thread ) over ! 
      ELSE ( thread ) off exit THEN
    ELSE ( thread next-in-thread ) nip
    THEN
  REPEAT drop ;

| : remove-tmp-words ( -- )
  voc-link  BEGIN  @ ?dup
  WHILE  dup 4 - remove-tmp-words-in-voc REPEAT  ;

~ : tmp-clear  ( -- )
  remove-tmp-words
  \ Uncomment the following line to help determine the ideal tmpheap
  \ size for your project.
  \ tmpheap> @ tmpheap[ @ - cr u. ." tmpheap spare"
  ]tmpheap @ tmpheap> !  last off ;

' tmp-clear is custom-remove
