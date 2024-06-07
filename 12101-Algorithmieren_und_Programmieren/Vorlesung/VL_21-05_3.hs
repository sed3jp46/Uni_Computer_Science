module Queue (Queue, empty, enqueue, dequeue, from, emptyQueue) where
    data Queue = Qu [a]
    
    empty :: Queue a
    empty = Qu []
    
    enqueue :: a -> Queue a -> Queue a
    enqueue el (Qu queue) = Qu (el : queue) --alt. wenn liste umgekehrt= Qu (queue ++ [el])
    
    dequeue :: Queue a -> Queue a
    dequeue (Qu queue) = Qu (init queue)
    dequeue (Qu []) = error "46 Pass auf dass ich dich nich verletz"
    
    from :: Queue a -> a
    from (Qu queue) = 
    emptyQueue :: Queue a -> Boolean
    
