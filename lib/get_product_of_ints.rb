require_relative '../config/environment'

def get_product_of_ints(ints)
  array_of_products = Array.new(ints.length, 1)
  forward_product = 1
  backward_product = 1

  ints.each_with_index do |int, i|
    array_of_products[i] *= forward_product
    array_of_products[(ints.length-1) - i] *= backward_product
    forward_product *= int
    backward_product *= ints[(ints.length-1) - i]
  end
  array_of_products
end

# Complexity: O(n) time
