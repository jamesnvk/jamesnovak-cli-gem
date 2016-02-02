class TrainHard::CLI

  def initialize
    TrainHard::Muscle.make_muscle_from_index
    TrainHard::Muscle.add_exercises
  end

  def start
    display_menu
    pick
  end

  def display_menu
    puts "Which muscle group are you training today? (enter number):"
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
        TrainHard::Muscle.all[0].exercises.each {|e| puts e.inspect}
      when "2"
        puts "Exercises for #{TrainHard::Muscle.all[1].name}:"
        TrainHard::Muscle.all[1].exercises.each {|e| puts e.inspect}
      when "3"
        puts "Exercises for #{TrainHard::Muscle.all[2].name}:"
        TrainHard::Muscle.all[2].exercises.each {|e| puts e.inspect}
      when "4"
        puts "Exercises for #{TrainHard::Muscle.all[3].name}:"
        TrainHard::Muscle.all[3].exercises.each {|e| puts e.inspect}
      when "5"
        puts "Exercises for #{TrainHard::Muscle.all[4].name}:"
        TrainHard::Muscle.all[4].exercises.each {|e| puts e.inspect}
      when "6"
        puts "Exercises for #{TrainHard::Muscle.all[5].name}:"
        TrainHard::Muscle.all[5].exercises.each {|e| puts e.inspect}
      when "7"
        puts "Exercises for #{TrainHard::Muscle.all[6].name}:"
        TrainHard::Muscle.all[6].exercises.each {|e| puts e.inspect}
      when "8"
        puts "Exercises for #{TrainHard::Muscle.all[7].name}:"
        TrainHard::Muscle.all[7].exercises.each {|e| puts e.inspect}
      when "menu"
        display_menu
      else
        puts "Not sure what you meant.. type menu or exit" if input != "exit"
      end
    end
  end

end