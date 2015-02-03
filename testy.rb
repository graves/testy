def imagine(description, &block)
  ExampleGroup.new(block).evaluate!
end

class ExampleGroup
  def initialize(block)
    @block = block
  end

  def evaluate!
    instance_eval(&@block)
  end

  def bruh(description, &block)
    block.call
  end
end
