class TheatreCliGem::CLI

  def call
    list_shows
    menu
    goodbye
  end

  def list_shows
    puts "Broadway Shows Currently Playing:"
    puts <<-DOC
      1. The Phantom of the Opera
      2. Dear Evan Hansen
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the show you're interested in learning more about or 'list' for the list of current shows:"
      input = gets.strip.downcase
      case input
        when "1"
          puts "More info on deal 1..."
        when "2"
          puts "More info on deal 2..."
        when "list"
          list_shows
        else
          puts "Type 'exit' to leave or 'list' to list Broadway shows currently playing:"
      end
    end
  end

  def goodbye
    puts "We hope you found the information you were seeking. Enjoy!"
  end
end
