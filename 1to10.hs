-- Problems 1-10: Lists.
-- http://www.haskell.org/haskellwiki/99_questions/1_to_10
-- Author: Sherwin Yu

-- 1. Find the last element of a list
myLast :: [a] -> a
myLast (a:[]) = a
myLast (a:as) = myLast as

-- 2. Find the second to last element of a list
myButLast :: [a] -> a
myButLast (a:b:[]) = a
myButLast (a:b:as) = myButLast $ b:as

-- 3. Find Kth element of a list
elementAt :: [a]-> k -> a
