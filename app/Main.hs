--
-- EPITECH PROJECT, 2021
-- Main
-- File description:
-- Main
--

module Main where
import Parsing
import System.IO
import System.Environment
import Parsing
import RuleManagement
import System.IO
import System.Environment
import System.Exit
import Data.Char
import Numeric

manageError :: (Int, Int, Int, Int, Int) -> [String] -> IO()
manageError (rules, start, lines, window, move) args = do
    if rules == 84 || args == [] then
        exitWith (ExitFailure 84)
    else if rules == 30 || rules == 90 || rules == 110 && length args > 1 then
        case length args `mod` 2 of
            0 -> rulesLoop (start, lines, window, move) ["*"] rules
            1-> exitWith(ExitFailure 84)
    else
        exitWith (ExitFailure 84)

main :: IO ()
main = do
    args <- getArgs
    let (rules, start, lines, window, move) = genParsing args
    manageError (rules, start, lines, window, move) args
