=begin
input: arbitrarily long list of arguments
output: total number of arguments for which the block returns true

mm:
use the * to give a name to the array of arbitrarily long list of arguments
iterate over the array, increment a count, etc.
=end

def count(*args)
  total = 0
  args.each { |ele| total += 1 if yield(ele) }
  total
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
