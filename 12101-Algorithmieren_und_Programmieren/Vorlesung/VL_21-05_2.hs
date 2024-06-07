module Stack (Stack, empty, push, pop, top, emptyStack) where
    data Stack a = St [a]
    
    empty :: Stack a
    empty = St []
    
    push :: a -> Stack a -> Stack a
    push el (St stack) = St (el:stack)
    
    pop :: Stack a -> Stack a
    pop (St []) = error "32 ihr FOTZEN"
    pop (St (a:stack)) = (St stack)
    
    top :: Stack a -> a
    top (St []) = error "34 du gehst baden mit den Fischen"
    top (St (a:stack)) = a
    
    emptyStack :: Stack a -> Bool
    emptyStack (St stack) = null stack
    
    instance Show (Stack a) where
        show (St []) = "$"
        show (St (a:as)) = show a ++ " | " ++ show (St (as))
