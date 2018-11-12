require_relative './../../spec/spec_helper'
require_relative './../lib/cart'

describe Cart do

  before :each do
    @cart = Cart.new
  end

  it 'should be initialized properly' do
    expect(@cart.is_a?(Cart)).to be_truthy
  end

  it 'a new cart should be empty' do
    expect(@cart).to be_empty
  end

end
