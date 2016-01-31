class TrainHard::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/abdominals"))
  end

  def self.scrape_muscles
    scraped_muscle = []
    string = self.get_page.css('div#listing li').text
  end

end