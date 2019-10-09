class Narwhal

  attr_reader :name, :weight

  def initialize(nar_args)
    @name = nar_args[:name]
    @weight = nar_args[:weight]
    @cute = nar_args[:cute]
  end

  def cute?
    @cute
  end

end
