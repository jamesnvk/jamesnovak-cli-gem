class TrainHard::Scraper
  extend Getable

  def self.get_page
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/abdominals"))
  end

  def self.scrape_muscles_index
    muscles = []
    muscles.push(
      self.get_page.css('.muscle-pagination li')[0].text,
      self.get_page.css('.muscle-pagination li')[3].text,
      self.get_page.css('.muscle-pagination li')[5].text,
      self.get_page.css('.muscle-pagination li')[8].text,
      self.get_page.css('.muscle-pagination li')[9].text,
      self.get_page.css('.muscle-pagination li')[13].text,
      self.get_page.css('.muscle-pagination li')[14].text,
      self.get_page.css('.muscle-pagination li')[16].text
      )
  end

  def self.scrape_exercises
    exercises = []
    exercises.push(
      self.get_page.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_biceps.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_chest.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_hamstrings.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_lats.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_quads.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_shoulders.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      self.get_triceps.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!}
      )
  end  
end

