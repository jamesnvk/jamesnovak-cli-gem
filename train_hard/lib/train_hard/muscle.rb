class TrainHard::Muscle
  attr_accessor :name, :exercises

  @@all = []

  SCRAPED_MUSCLES = TrainHard::Scraper.scrape_muscles_index
  SCRAPED_EXERCISES = TrainHard::Scraper.scrape_exercises

  def initialize(name = nil)
    @name = name
    @exercises = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_muscle_from_index
    SCRAPED_MUSCLES.each {|muscle| TrainHard::Muscle.new(muscle)}
  end
  
  def self.list_muscle
    @@all.each_with_index {|item, index| puts "#{index + 1}. #{item.name}"}
  end

  def self.make_and_add_exercises
    @@all[0].exercises = SCRAPED_EXERCISES[0].each {|exercise| TrainHard::Exercise.new(exercise, @@all[0])}
    @@all[1].exercises = SCRAPED_EXERCISES[1].each {|exercise| TrainHard::Exercise.new(exercise, @@all[1])}
    @@all[2].exercises = SCRAPED_EXERCISES[2].each {|exercise| TrainHard::Exercise.new(exercise, @@all[2])}
    @@all[3].exercises = SCRAPED_EXERCISES[3].each {|exercise| TrainHard::Exercise.new(exercise, @@all[3])}
    @@all[4].exercises = SCRAPED_EXERCISES[4].each {|exercise| TrainHard::Exercise.new(exercise, @@all[4])}
    @@all[5].exercises = SCRAPED_EXERCISES[5].each {|exercise| TrainHard::Exercise.new(exercise, @@all[5])}
    @@all[6].exercises = SCRAPED_EXERCISES[6].each {|exercise| TrainHard::Exercise.new(exercise, @@all[6])}
    @@all[7].exercises = SCRAPED_EXERCISES[7].each {|exercise| TrainHard::Exercise.new(exercise, @@all[7])}
  end
end 