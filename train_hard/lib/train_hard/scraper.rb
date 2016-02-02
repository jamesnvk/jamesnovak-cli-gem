class TrainHard::Scraper
  extend Getable

  def self.get_page
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/abdominals"))
  end

  def self.scrape_muscles_index
    muscles = []
    muscles.push(
      abs = self.get_page.css('.muscle-pagination li')[0].text,
      biceps = self.get_page.css('.muscle-pagination li')[3].text,
      chest = self.get_page.css('.muscle-pagination li')[5].text,
      hamstrings = self.get_page.css('.muscle-pagination li')[8].text,
      lats = self.get_page.css('.muscle-pagination li')[9].text,
      quads = self.get_page.css('.muscle-pagination li')[13].text,
      shoulders = self.get_page.css('.muscle-pagination li')[14].text,
      triceps = self.get_page.css('.muscle-pagination li')[16].text
      )
  end

  def self.scrape_exercises
    exercises = []
    exercises.push(
      abs = self.get_page.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      biceps = self.get_biceps.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      chest = self.get_chest.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      hamstrings = self.get_hamstrings.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      lats = self.get_lats.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      quads = self.get_quads.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      shoulders = self.get_shoulders.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!},
      triceps = self.get_triceps.css('.exerciseName h3 a').collect {|exercise| exercise.text.strip!}
      )
  end  

end

