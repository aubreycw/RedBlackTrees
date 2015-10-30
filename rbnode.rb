class RedBlackNode
  def initialize(value, parent, left, right, black)
    @value = value
    @parent = parent
    @left = left
    @right = right
    @black = black
  end

  def include?(value)
    return false if @value.nil?
    return true if @value == value
    return @left.include?(value) if @value > value && @left
    @right && @right.include?(value)
  end

  def add(value)
    return self if value == @value
    if value < @value && @left
      @left.add(value)
    elsif value < @value
      @left = RedBlackNode.new(value, self, nil, nil, false)
      @left.rebalance
    elsif @right
      @right.add(value)
    else
      @right = RedBlackNode.new(value, self, nil, nil, false)
      @right.rebalance
    end
    self
  end

  def rebalance
  end
end