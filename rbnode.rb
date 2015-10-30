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
    if value < @value
      @left = @left.add(value) if @left
      @left = RedBlackNode.new(value, self, nil, nil, false)
    else
      @right = @right.add(value) if @right
      @right = RedBlackNode.new(value, self, nil, nil, false)
    end
    self
  end
end