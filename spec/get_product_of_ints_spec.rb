require 'spec_helper'

describe "#get_product_of_ints(ints)" do
  it 'returns [84, 12, 28, 21]' do
    expect(get_product_of_ints([1, 7, 3, 4])).to eq([84, 12, 28, 21])
  end

  it 'returns [540, 270, 90, 108, 60]' do
    expect(get_product_of_ints([1, 2, 6, 5, 9])).to eq([540, 270, 90, 108, 60])
  end
end
