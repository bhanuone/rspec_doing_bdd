class Cart

  def initialize
    @items = {}
  end

  def empty?
    @items.empty?
  end

  def total
    @items.map {|k, v| v[:price] * v[:quantity]}.inject(:+).to_i
  end

  def add(item)
    @items.merge!(item)
  end

  def item_count
    @items.count
  end

  def increase_quantity(item_name)
    @items[item_name][:quantity] += 1
  end

end
