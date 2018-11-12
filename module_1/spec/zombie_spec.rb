require 'spec_helper'
require './module_1/lib/zombie'

describe Zombie do
  it 'is name Ash' do
    zombie = Zombie.new('Ash')
    expect(zombie.name).to eq('Ash')
  end

  it 'should has no brains' do
    zombie = Zombie.new('Ash')
    zombie.brains.should be < 1
  end
end
