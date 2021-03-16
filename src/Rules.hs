--
-- EPITECH PROJECT, 2021
-- Rules
-- File description:
-- Rules
--
module Rules where

rule30 [] current = current
rule30 (_:[]) current = current
rule30 (_:_:[]) current = current
rule30 ("*":" ":" ":xs) current = rule30 (" ":" ":xs) (current ++ ["*"])
rule30 (" ":" ":"*":xs) current = rule30 (" ":"*":xs) (current ++ ["*"])
rule30 (" ":"*":"*":xs) current = rule30 ("*":"*":xs) (current ++ ["*"])
rule30 (" ":"*":" ":xs) current = rule30 ("*":" ":xs) (current ++ ["*"])
rule30 (x:y:z:xs) current = rule30 (y:z:xs) (current ++ [" "])

rule90 :: [String] -> [String] -> [String]
rule90 [] [] = ["*"]
rule90 [] current = current
rule90 (_:[]) current = current
rule90 (_:_:[]) current = current
rule90 ("*":" ":" ":xs) current = rule90 (" ":" ":xs) (current ++ ["*"])
rule90 (" ":" ":"*":xs) current = rule90 (" ":"*":xs) (current ++ ["*"])
rule90 ("*":"*":" ":xs) current = rule90 ("*":" ":xs) (current ++ ["*"])
rule90 (" ":"*":"*":xs) current = rule90 ("*":"*":xs) (current ++ ["*"])
rule90 (x:y:z:xs) current = rule90 (y:z:xs) (current ++ [" "])

rule110 :: [String] -> [String] -> [String]
rule110 [] [] = ["*"]
rule110 [] current = current
rule110 (_:[]) current = current
rule110 (_:_:[]) current = current
rule110 ("*":" ":"*":xs) current = rule110 (" ":"*":xs) (current ++ ["*"])
rule110 (" ":"*":" ":xs) current= rule110 ("*":" ":xs) (current ++ ["*"])
rule110 (" ":" ":"*":xs) current = rule110 (" ":"*":xs) (current ++ ["*"])
rule110 ("*":"*":" ":xs) current = rule110 ("*":" ":xs) (current ++ ["*"])
rule110 (" ":"*":"*":xs) current = rule110 ("*":"*":xs) (current ++ ["*"])
rule110 (x:y:z:xs) current = rule110 (y:z:xs) (current ++ [" "])
