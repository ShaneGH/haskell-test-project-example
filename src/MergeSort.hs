module MergeSort (mergeSort) where

mergeSort :: Ord a => [a] -> [a]
mergeSort xs@[] = xs
mergeSort xs@[_] = xs
mergeSort xs = merge2Sorted . split $ xs

split :: Ord a => [a] -> ([a], [a])
split [] = ([], [])
split xs@[a] = (xs, [])
split (head : tail) = ([head], mergeSort tail)

merge2Sorted :: Ord a => ([a], [a]) -> [a]
merge2Sorted ([], ys) = ys
merge2Sorted (xs, []) = xs
merge2Sorted (xs@(x : tailX), ys@(y : tailY))
  | x <= y = (x : (merge2Sorted (tailX, ys)))
  | otherwise = (y : (merge2Sorted (xs, tailY)))
