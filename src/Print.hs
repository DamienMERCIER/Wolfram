--
-- EPITECH PROJECT, 2021
-- Printold_line
-- File description:
-- Print
--
module Print where

printer :: (Int, Int) -> [String] -> IO ()
printer (0,_) _ = putStrLn ""
printer (win, dec) line
    | dec > 0 = printer (win, dec - 1) ([" "," "] ++ line)
    | dec < 0 = printer (win, dec + 1) (line ++ [" "," "])
printer (win, move) line
    | length line < win = printer (win, move) ([" "] ++ line ++ [" "])
    | length line > win + 1 = printer (win, move) (init $ tail line)
    | length line > win = printer (win, move) (init line)
printer (win ,0) (" ":xs) = putStr " " >> printer (win -1, 0) xs
printer (win ,0) ("*":xs) = putStr "*" >> printer (win -1, 0) xs