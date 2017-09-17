class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  attr_accessor :sequences0
  attr_accessor :sequences1
  def initialize(sequences0, sequences1)
    @sequences0 = sequences0
    @sequences1 = sequences1
  end
  def cProd
    hold = Array.new
    for c0 in @sequences0 
      for c1 in @sequences1
        hold.push([c0, c1])
      end
    end
    return hold
  end
end
