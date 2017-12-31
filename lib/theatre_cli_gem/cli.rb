class TheatreCliGem::CLI

  def call
    list_shows
    menu
    goodbye
  end

  def list_shows
    puts "Broadway Shows Currently Playing:"
    @shows = TheatreCliGem::Show.current
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "\nEnter the number of the show you're interested in or type 'list' for the list of current shows or type 'exit' to leave:"
      input = gets.strip.downcase
      if input.to_i > 0
        selected_show = @shows[input.to_i-1]
        puts "\nShow Name:\n#{selected_show.name}\n\nTheater:\n#{selected_show.theater}\n\nOpening Date:\n#{selected_show.opening_date}\n\nSummary:\n#{selected_show.summary}"
      elsif input == "list"
        list_shows
      else
        puts "Type 'list' to list Broadway shows currently playing or type 'exit' to leave:"
      end
    end
  end

  def goodbye
    puts "We hope you found the information you were seeking. Enjoy!"
  end
end
