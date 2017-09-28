main = do
   let stack1 = push 1 $ push 2 $ push 3 $ push 4 Empty
   putStrLn $ show $ move 4 (stack1, Empty, Empty)

-- Tower of Hanoi recursive implementation
move :: Int -> (Stack a, Stack a, Stack a) -> (Stack a, Stack a, Stack a)
move 1 input@(src, aux, des)
  = let 
       (element, src2) = pop src
       des2 = push (fromJust element) des
    in
      (src2, aux, des2)
move n input@(src, aux, des)
  = let 
      (src1, des1, aux1) = move (n-1) (src, des, aux)
      (element, src2) = pop src1
      des2 = push (fromJust element) des1
      (aux3, src3, des3) = move (n-1) (aux1, src2, des2)
    in
      (src3, aux3, des3)
    
fromJust :: Maybe a -> a
fromJust (Just a) = a
fromJust Nothing = error "unexpected Nothing"
    
-- Stack implementation
data Stack a = Empty
             | Stck a (Stack a)
             deriving Show
             
push :: a -> Stack a -> Stack a
push element stack = Stck element stack

pop :: Stack a -> (Maybe a, Stack a)
pop (Empty) = (Nothing, Empty)
pop (Stck element stack) = (Just element, stack)
