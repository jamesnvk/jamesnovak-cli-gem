# CLI Controller
require_relative "./scraper.rb"
class TrainHard::CLI
  BASE_URL = "http://www.bodybuilding.com/exercises/list/muscle/"

  def start
    display_menu
    pick
  end

  def display_menu
    puts "Which muscle group are you training today?:"
    TrainHard::Muscle.list_muscle
  end

  def pick
    input = nil
    while input != "exit"
    puts "Enter number of the muscle you would like to train or type menu to display menu:"
    input = gets.strip
      case input
      when "1"
        puts "Exercises for Chest:"
        puts "#"
      when "2"
        puts "Exercises for 2"
      when "3"
        puts "Exercises for 3"
      when "menu"
        display_menu
      else
        puts "Not sure what you meant.. type menu or exit"
      end
    end
  end

end