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
end