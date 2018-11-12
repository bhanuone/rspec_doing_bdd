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

  it 'A new empty cart total value should be 0' do
    expect(@cart.total).to eq(0)
  end

  it 'should not be empty after adding an item' do
    @cart.add({'Item': {quantity: 1, price: 12}})
    expect(@cart).not_to be_empty
  end

  it 'should not increase item count if quantity of an item is increased' do
    @cart.add({'Item': {quantity: 1, price: 12}})
    puts @cart.items
    expect(@cart.item_count).to eq(1)
    @cart.increase_quantity(:Item)
    expect(@cart.item_count).to eq(1)
  end

  it 'should calculate the price cart total value correctly' do
    @cart.add({'Item': {quantity: 1, price: 12}})
    expect(@cart.total).to eq(12)
    @cart.add({'Item 2': {quantity: 2, price: 15}})
    expect(@cart.total).to eq(42)
  end

end
