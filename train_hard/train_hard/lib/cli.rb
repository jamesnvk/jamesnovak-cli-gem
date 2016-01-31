# CLI Controller
class TrainHard::CLI

  def start
    display_menu
    pick
  end

  def display_menu
    puts "Which muscle group are you training today?:"
    puts <<-DOC
      1. Chest
      2. Back
      3. Legs
      4. Shoulders
      5. Abs
      6. Arms
    DOC
  end

  def pick
    input = nil
    while input != "exit"
    puts "Enter number of the muscle you would like to train or type menu to display menu:"
    input = gets.strip
      case input
      when "1"
        puts "Exercises for 1"
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