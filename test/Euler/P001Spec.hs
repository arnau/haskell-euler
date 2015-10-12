module Euler.P001Spec (main, spec) where

import Test.Hspec

import Euler.P001

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "sumOfMultiples" $ do
    it "sums all multiples of 3 or 5 below 10" $ do
      sumOfMultiples 10 `shouldBe` 23
    it "sums all multiples of 3 or 5 below 1000" $ do
      sumOfMultiples 1000 `shouldBe` 233168

  describe "sumOfMultiples'" $ do
    it "sums all multiples of 3 or 5 below 10" $ do
      sumOfMultiples' 10 `shouldBe` 23
    it "sums all multiples of 3 or 5 below 1000" $ do
      sumOfMultiples' 1000 `shouldBe` 233168
