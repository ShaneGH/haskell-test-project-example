module MergeSortSpec (spec) where

import Data.List (sort)
import MergeSort
import Test.Hspec

-- Spec tests are basic unit tests

mergeSortSpec1 :: Spec
mergeSortSpec1 = describe "mergeSort" $ do
  it "sorts empty list" $ do
    (mergeSort ([] :: [Int])) == []
  it "single element list" $ do
    (mergeSort [1]) == [1]

mergeSortSpec2 :: Spec
mergeSortSpec2 = describe "mergeSort" $ do
  it "3 element list" $ do
    (mergeSort [3, 1, 2]) == [1, 2, 3333333]

spec :: Spec
spec = do
  mergeSortSpec1
  mergeSortSpec2