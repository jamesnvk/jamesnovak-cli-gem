# Model
class TrainHard::Muscle
  attr_accessor :name, :exercises

  @@all = []

  def initialize(name = nil, exercises = nil)
    @name = name
    @exercises = exercises
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_muscle_from_index
    array = TrainHard::Scraper.scrape_muscles_index
    array.each do |muscle|
      TrainHard::Muscle.new(muscle)
    end
  end
  
  def self.list_muscle
    @@all.each_with_index {|item, index| puts "#{index + 1}. #{item.name}"}
  end



end 