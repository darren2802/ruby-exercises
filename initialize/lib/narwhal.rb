class Narwhal

  attr_reader :name, :weight

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @cute = args[:cute]
  end

  def cute?
    @cute
  end

end
