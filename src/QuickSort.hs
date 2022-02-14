module QuickSort (quickSort) where

partition :: Ord a => a -> [a] -> ([a], [a])
partition _ [] = ([], [])
partition pivot (head : tail)
  | head < pivot = (head : l, r)
  | otherwise = (l, head : r)
  where
    (l, r) = partition pivot tail

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (head : tail) =
  sortedL ++ (head : sortedR)
  where
    (l, r) = partition head tail
    sortedL = quickSort l
    sortedR = quickSort r