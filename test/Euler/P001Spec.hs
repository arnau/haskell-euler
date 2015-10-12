module Euler.P001Spec (spec) where

import Test.Hspec

import Euler.P001

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
