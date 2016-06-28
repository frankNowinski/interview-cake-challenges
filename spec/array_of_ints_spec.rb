require 'spec_helper'

describe "Procedural #array_ints(ints)" do
  it 'returns 150' do
    expect(array_of_ints([-10, -5, 1, 3, 2])).to eq(150)
  end

  it 'returns 5000' do
    expect(array_of_ints([1, 10, -5, 1, -100])).to eq(5000)
  end

  it 'returns 300' do
    expect(array_of_ints([-10, -10, 1, 3, 2])).to eq(300)
  end
end

describe "Object orientation #array_ints(ints)" do
  it 'returns 150' do
    expect(ProductOfThree.new([-10, -5, 1, 3, 2]).highest_product_of_three).to eq(150)
  end

  it 'returns 5000' do
    expect(ProductOfThree.new([1, 10, -5, 1, -100]).highest_product_of_three).to eq(5000)
  end

  it 'returns 300' do
    expect(ProductOfThree.new([-10, -10, 1, 3, 2]).highest_product_of_three).to eq(300)
  end

end
