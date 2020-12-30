module Repl ( Repl.read, Repl.eval, Repl.print ) where


import System.IO as Buf

import qualified Eval


-- read prints out some helpful prefix to express that it's 
-- expecting some input; then it reads one line of input and
-- returns it.
read :: IO String
read = do
    printFlush "~$ "
    getLine


-- eval evaluates input and returns output as a String.
-- It returns Nothing upon call to exit to break out of the loop.
eval :: String -> Maybe String
eval ".exit" = Nothing
eval input = Just $ Eval.asciiSum input


-- print simply prints out the result of evaluation.
print :: String -> IO ()
print = putStrLn


---------- UTILITY FUNCTIONS ---------------------------------------------------

printFlush :: String -> IO ()
printFlush string = do
    Prelude.putStr string
    flush

flush :: IO ()
flush = Buf.hFlush stdout
