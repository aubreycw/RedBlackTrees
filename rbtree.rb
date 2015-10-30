class RedBlackTree
  def initialize()
    @rootNode = RedBlackNode.new(nil, nil, nil, nil, true)
  end

  def add(value)
    @rootNode = @rootNode.add(value)
    rebalance
  end

  def remove(value)

  end

  def rebalance
  end

  def include?(value)
    @rootNode.include?(value)
  end
end