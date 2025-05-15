#!/bin/sh

# Get data, split into cols, run a fancy awk script on it
# Need to get better at using awk!

curl -s https://raw.githubusercontent.com/fivethirtyeight/data/master/alcohol-consumption/drinks.csv | \
awk -F, 'NR == 1 { next }
{
  if (NR == 2 || $3 < min1) min1 = $3
  if (NR == 2 || $3 > max1) max1 = $3
  if (NR == 2 || $4 < min2) min2 = $4
  if (NR == 2 || $4 > max2) max2 = $4
}
END {
  print "Col3 (Beer servings) Min:", min1, "Max:", max1
  print "Col4 (Spirit servings) Min:", min2, "Max:", max2
}'