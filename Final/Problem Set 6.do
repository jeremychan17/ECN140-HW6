// Problem 1
use "/Users/Jeremy/Documents/GitHub/ECN140-HW6/Datasets/pwt63.dta"

// Part a
// Creating Variables
gen lcons = log(cons)
gen lrgdp = log(rgdpl)

// Running regressions
reg lcons lrgdp, robust
xi: regress lcons lrgdp i.country, robust

// Part c
xi: regress lcons lrgdp i.country i.year, robust

// Problem 2
use "/Users/Jeremy/Documents/GitHub/ECN140-HW6/Datasets/HW5.DTA", clear

// Part a: estimating demand equation
reg p q s

// Part b: estimating supply equation
reg q p

// Part e: instrumental regression
ivreg q (p = s), first robust

// Problem 4
use "/Users/Jeremy/Documents/GitHub/ECN140-HW6/Datasets/card_minwages.dta", clear

// part b
sum emp if state == 1 & year == 1 // NJ before
sum emp if state == 1 & year == 2 // NJ after
sum emp if state == 2 & year == 1 // PA before
sum emp if state == 2 & year == 2 // PA after

// part c
reg emp NJ W2 W2NJ

// Problem 5
use "/Users/Jeremy/Documents/GitHub/ECN140-HW6/Datasets/INJURY.DTA", clear

// part b
sum durat if highearn == 1 & afchnge == 0 // High earners before
sum durat if highearn == 1 & afchnge == 1 // high earners after
sum durat if highearn == 0 & afchnge == 0 // low earners before
sum durat if highearn == 0 & afchnge == 1 // low earners after

// part c
reg durat highearn afchnge afhigh

