class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  attr_accessor :sequences0
  attr_accessor :sequences1
  def initialize(sequences0, sequences1)
    @sequences0 = sequences0
    @sequences1 = sequences1
  end
  def each
    @sequences0.each do |c0|
      @sequences1.each do |c1|
        yield [c0, c1]
      end
    end
  end
end
