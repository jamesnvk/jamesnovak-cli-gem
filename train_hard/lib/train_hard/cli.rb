# CLI Controller
class TrainHard::CLI

  def initialize
    TrainHard::Muscle.make_muscle_from_index
  end

  def start
    display_menu
    pick
  end

  def display_menu
    puts "Which muscle group are you training today?:"
    TrainHard::Muscle.list_muscle
  end

  def pick
    puts "Enter number of the muscle you would like to train or type menu to display menu:"
    input = nil
    while input != "exit"
    input = gets.strip
      case input
      when "1"
        puts "Exercises for #{TrainHard::Muscle.all[0].name}:"
        puts "Exercises here"
      when "2"
        puts "Exercises for #{TrainHard::Muscle.all[1].name}:"
        puts "Exercises here"
      when "3"
        puts "Exercises for #{TrainHard::Muscle.all[2].name}:"
        puts "Exercises here"
      when "4"
        puts "Exercises for #{TrainHard::Muscle.all[3].name}:"
        puts "Exercises here"
      when "5"
        puts "Exercises for #{TrainHard::Muscle.all[4].name}:"
        puts "Exercises here"
      when "6"
        puts "Exercises for #{TrainHard::Muscle.all[5].name}:"
        puts "Exercises here"
      when "7"
        puts "Exercises for #{TrainHard::Muscle.all[6].name}:"
        puts "Exercises here"
      when "menu"
        display_menu
      else
        puts "Not sure what you meant.. type menu or exit" if input != "exit"
      end
    end
  end

end