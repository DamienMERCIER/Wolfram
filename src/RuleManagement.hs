--
-- EPITECH PROJECT, 2021
-- ruleManagement
-- File description:
-- ruleManagement
--
module RuleManagement where
import Rules
import Print

rules :: [String] -> [String] -> Int -> [String]
rules last current 30 = rule30 last current
rules last current 90 = rule90 last current
rules last current 110 = rule110 last current

rulesLoop :: (Int, Int, Int, Int) -> [String] -> Int -> IO ()
rulesLoop (start, 0, window, move) _ _ = putStr ""
rulesLoop (start, lines, window, move) last_line rule = do
    let current = rules ([" "," "] ++ last_line ++ [" "," "]) [] rule
    if start == 0 then do
        printer (window, move) last_line
        rulesLoop (start, lines - 1, window, move) current rule
    else
        rulesLoop (start - 1, lines, window, move) current rule