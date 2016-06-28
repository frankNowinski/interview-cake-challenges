require_relative '../config/environment'

# Procedurally
def array_of_ints(ints)
  max_products = ints[0..2].inject(:*)
  i = 0; j = 1; k = 2

  while i+3 < ints.length
    if k == ints.length
      i += 1; j += 1; k = j+1
    else
      current_product = ints[i] * ints[j] * ints[k]
      max_products = current_product if current_product > max_products
      k += 1
    end
  end
  max_products
end

# Object Orientation
class ProductOfThree
  attr_reader :highest_product_of_three

  def initialize(ints)
    @highest = [ints[0], ints[1]].max
    @lowest = [ints[0], ints[1]].min
    @highest_product_of_three = array_of_ints(ints)
  end

  def array_of_ints(ints)
    highest_product_of_three = ints[0..2].inject(:*)
    lowest_product_of_2 = ints[0] * ints[1]
    highest_product_of_2 = ints[0] * ints[1]

    ints[2..-1].each do |current|
      highest_product_of_three = [
        highest_product_of_three,
        current * lowest_product_of_2,
        current * highest_product_of_2
      ].max

      highest_product_of_2 = find_product(highest_product_of_2, current, "max")
      lowest_product_of_2 = find_product(lowest_product_of_2, current, "min")
      @highest = [@highest, current].max
      @lowest = [@lowest, current].min
    end
    highest_product_of_three
  end

  def find_product(product, current, bound)
    [product, (current * @highest), (current * @lowest)].send(bound)
  end
end

# Complexity: O(n)
