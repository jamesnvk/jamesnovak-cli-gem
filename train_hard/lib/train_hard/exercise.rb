class TrainHard::Exercise
  attr_accessor :name, :muscle

  @@all = []

  def initialize(name = nil, muscle = nil)
    @name = name
    @muscle = muscle
    @@all << self
  end



end