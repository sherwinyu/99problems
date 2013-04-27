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

-- 3. Find Kth element of a list (1 indexed)
elementAt :: (Eq k, Num k) => [a]-> k -> a
elementAt (a:as) 1 = a
elementAt (a:as) k = elementAt as (k-1)

-- 4. Find the number of elemnets in a list
myLength :: [a] -> Int
myLength ([]) = 0
myLength (a:as) = 1 + myLength as


-- 5. Reverse a list
myReverse :: [x] -> [x]
myReverse (a:[]) = [a]
myReverse (a:as) = (myReverse as)++[a]

-- 6. Find out whether a list is a palindrome
isPalindrome :: (Eq x) => [x] -> Bool
isPalindrome (a:[]) = True
isPalindrome (a:b:[]) = a == b
isPalindrome (a:as) = (a == last as) && isPalindrome (init as)

-- 7. Flatten a nested list structure
data NestedList a = Elem a | List [NestedList a]
myFlatten :: NestedList a  -> [a]
myFlatten (Elem x) = [x]
myFlatten (List (x:xs)) = (myFlatten x) ++ myFlatten (List xs)
myFlatten (List []) = []
