class TrainHard::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/abdominals"))
  end

  def self.scrape_muscles_index
    muscles = []
    muscles.push(
      biceps = self.get_page.css('.muscle-pagination li')[3].text,
      chest = self.get_page.css('.muscle-pagination li')[5].text,
      hamstrings = self.get_page.css('.muscle-pagination li')[8].text,
      lats = self.get_page.css('.muscle-pagination li')[9].text,
      quads = self.get_page.css('.muscle-pagination li')[13].text,
      shoulders = self.get_page.css('.muscle-pagination li')[14].text,
      triceps = self.get_page.css('.muscle-pagination li')[16].text
      )
  end  

end

