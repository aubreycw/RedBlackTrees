class RedBlackTree
  def initialize()
    @rootNode = RedBlackNode.new(nil, nil, nil, nil, true)
  end

  def add(value)
  end

  def remove(value)
  end

  def include?(value)
    @rootNode.include?(value)
  end
end