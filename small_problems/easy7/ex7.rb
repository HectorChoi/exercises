# Multiplicative Average
# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places.
# Assume the array is non-empty.

# algorithm before looking at hint:
# reduce with * operator to get a product
# divide by size of array
# .round the result

# after hint:
# use Kernel#format

def show_multiplicative_average(arr)
  product = arr.reduce(:*)
  average = product / arr.size.to_f
  format("%.3f", average)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
