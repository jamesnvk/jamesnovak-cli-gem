class TrainHard::Muscle
  attr_accessor :name
  attr_reader :exercises

  @@all = []

  def initialize(name = nil, exercises = nil)
    @name = name
    @exercises = exercises
    @@all << self
  end

  def self.all
    @@all
  end

  def make_muscle#(array from scraper)
   # code here
    array.each do |muscle|
      TrainHard::Muscle.new(muscle)
    end
  end

  
  def self.list_muscle#(array)
    array.each_with_index {|item, index| puts "#{index + 1}. #{item.name}"}
  end




end 