-- CIS 194, Spring 2015
--
-- Test cases for HW 01

module HW01Tests where

import HW01
import Testing

-- Exercise 1 -----------------------------------------

testLastDigit :: (Integer, Integer) -> Bool
testLastDigit (n, d) = lastDigit n == d

testDropLastDigit :: (Integer, Integer) -> Bool
testDropLastDigit (n, d) = dropLastDigit n == d

ex1Tests :: [Test]
ex1Tests = [ Test "lastDigit test" testLastDigit
             [(123, 3), (1234, 4), (5, 5), (10, 0), (0, 0)]
           , Test "dropLastDigit test" testDropLastDigit
           [(123, 12), (1234, 123), (5, 0), (10, 1), (0,0)]
           ]

-- Exercise 2 -----------------------------------------

testToRevDigits :: (Integer, [Integer]) -> Bool
testToRevDigits (n, ns) = toRevDigits n == ns

ex2Tests :: [Test]
ex2Tests = [Test "toRevDigits test" testToRevDigits
             [(123, [3, 2, 1]), (1234, [4, 3, 2, 1]), (5, [5]), (0, [])]
           ]

-- Exercise 3 -----------------------------------------

testDoubleEveryOther :: ([Integer], [Integer]) -> Bool
testDoubleEveryOther (ins, doubled_ins) = doubleEveryOther (ins) == doubled_ins

ex3Tests :: [Test]
ex3Tests = [Test "doubleEveryOther test" testDoubleEveryOther
             [([1], [1]), ([1, 2], [1, 4]), ([], []), ([1, 6, 3, 5], 
              [1, 12, 3, 10])]
           ]

-- Exercise 4 -----------------------------------------

testSumDigits :: ([Integer], Integer) -> Bool
testSumDigits (ds, s) = sumDigits ds == s

ex4Tests :: [Test]
ex4Tests = [Test "sumDigits test" testSumDigits
             [([1], 1), ([], 0), ([1, 2], 3), ([234, 23], 14)]
           ]

-- Exercise 5 -----------------------------------------

testLuhn :: (Integer, Bool) -> Bool
testLuhn (n, res) = luhn(n) == res

ex5Tests :: [Test]
ex5Tests = [Test "luhn test" testLuhn
           [(5594589764218858, True), (1234567898765432, False)]
           ]

-- Exercise 6 -----------------------------------------

ex6Tests :: [Test]
ex6Tests = []

-- All Tests ------------------------------------------

allTests :: [Test]
allTests = concat [ ex1Tests
                  , ex2Tests
                  , ex3Tests
                  , ex4Tests
                  , ex5Tests
                  , ex6Tests
                  ]
