import qualified Repl


main :: IO ()
main = loop


loop :: IO ()
loop = do
    input <- Repl.read
    
    case Repl.eval input of
        Nothing -> return ()

        Just output -> do
            Repl.print output
            loop
