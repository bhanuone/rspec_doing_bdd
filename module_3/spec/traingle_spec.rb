require 'spec_helper'
require './module_2/lib/triangle'

describe Triangle do
  it 'should return :isosceles when only two sides are equal' do
    t = Triangle.new(7, 7, 5)
    expect(t.type).to be :isosceles 
  end

  it 'should return :invalid when sides dont form a triangle' do
    t = Triangle.new(1, 2, 7)
    expect(t.type).to be :invalid
  end

  it 'should return :equilateral when all the sides are equal' do
    t = Triangle.new(7, 7, 7)
    expect(t.type).to be :equilateral
  end

  it 'should return :scalene when all sides are different' do
    t = Triangle.new(3, 4, 5)
    expect(t.type).to be :scalene
  end
end
