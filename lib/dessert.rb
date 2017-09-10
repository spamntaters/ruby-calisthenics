class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    super "#{flavor} jelly bean", 5
  end
  def delicious?
    flavor == "licorice" ? false : true
  end
end
