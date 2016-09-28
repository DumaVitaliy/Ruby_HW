a = [1, 2, 3,4,5,6,7]

def reverse(array)
  b = array.pop
  reverse(array) if array.length > 0
  array.unshift b
end
puts reverse(Array.new(a)).inspect#


