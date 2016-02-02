module Getable

  def get_biceps
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/biceps"))
  end

  def get_chest
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/chest"))
  end

  def get_hamstrings
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/hamstrings"))
  end

  def get_lats
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/lats"))
  end

  def get_quads
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/quadriceps"))
  end

  def get_shoulders
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/shoulders"))
  end

  def get_triceps
    Nokogiri::HTML(open("http://www.bodybuilding.com/exercises/list/muscle/selected/triceps"))
  end

end