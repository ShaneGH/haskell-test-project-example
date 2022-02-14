module QuickSortSpec (spec) where

import Data.List (sort)
import QuickSort
import Test.Hspec
import Test.QuickCheck

-- Quicksort is a property based testing framework

quickSortSpec :: Spec
quickSortSpec = describe "quickSort" $ do
  it "always sorts correctly" $
    property $ verify
  where
    verify :: [Int] -> Expectation
    verify xs = quickSort xs `shouldBe` sort xs

spec :: Spec
spec = do
  quickSortSpec