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

  def self.add_exercises
    array = TrainHard::Scraper.scrape_exercises
    @@all[0].exercises = array[0]
    @@all[1].exercises = array[1]
    @@all[2].exercises = array[2]
    @@all[3].exercises = array[3]
    @@all[4].exercises = array[4]
    @@all[5].exercises = array[5]
    @@all[6].exercises = array[6]
    @@all[7].exercises = array[7]
  end



end 