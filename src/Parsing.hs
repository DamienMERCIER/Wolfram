--
-- EPITECH PROJECT, 2021
-- parsing
-- File description:
-- parsing
--
module Parsing where
intchecker :: String -> Bool
intchecker a = case reads a :: [(Integer, String)] of
  [(_, "")] -> True
  _         -> False

parseRule :: [String] -> Int -> Int
parseRule (x:[]) rule = 84
parseRule (a:b:cx) rule
    | "--rule" == a && intchecker b && (read $ b::Int) >= 0 && (read $ b::Int) <= 225 = read $ b::Int
    | cx == [] = 0
parseRule (a:b:cx) rule = parseRule cx rule

parseStart :: [String ] -> Int -> Int
parseStart (a:b:cx) start
    | "--start" == a && intchecker b && start == 0 = read $ b::Int
    | cx == [] = 0
parseStart(a:b:cx) start = parseStart cx start

parseLine :: [String] -> Int -> Int
parseLine (a:b:cx) lines
    | "--lines" == a && intchecker b && lines == (-1) && (read $ b::Int) >= 0 = read $ b::Int
    | cx == [] = 0
parseLine(a:b:cx) lines = parseLine cx lines

parseWindow :: [String] -> Int -> Int
parseWindow (a:b:cx) window
    | "--window" == a && window == 80 && intchecker b = read $ b::Int
    | cx == [] = 80
parseWindow(a:b:cx) window = parseWindow cx window

parseMove :: [String] -> Int -> Int
parseMove (a:b:cx) move
    | "--move" == a && move == 0 && intchecker b = read $ b::Int
    | cx == [] = 0
parseMove(a:b:cx) move = parseMove cx move

genParsing:: [String] -> (Int, Int, Int, Int, Int)
genParsing args = (parseRule args 0, parseStart args 0, parseLine args (-1), parseWindow args 80, parseMove args 0)
