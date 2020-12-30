module Eval where


import Data.Char (ord)


-- length returns input's length converted to String.
length :: String -> String
length = show . Prelude.length


-- asciiSum retusn the sum of ASCII characters' values from input.
asciiSum :: String -> String
asciiSum = show . sum . map ord
