#lang scheme

#|
(list 1 (list 2 (list 3 4)))

in form of a tree
                                         (list 1 (list 2 (list 3 4)))
                                                /          \
                                               1      (list 2 (list 3 4))
                                                         /      \
                                                        2      (list 3 4)
                                                                  /  \
                                                                 3    4



box and structure form

   (1 (2 (3 4)))


           (1 (2 (3 4)))    ->  (2 (3 4)) ->  (3 4) ->
                |                   |           |        |
                1                   2           3        4
|#