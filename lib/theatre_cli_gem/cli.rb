class TheatreCliGem::CLI

  def call
    list_shows
    menu
  end

  def list_shows
    puts "Broadway Shows Currently Playing:"
    puts <<-DOC
      1. The Phantom of the Opera
      2. Dear Evan Hansen
      3. Cats
      4. A Bronx Tale
    DOC
  end

  def menu
    puts "Enter the number of the show you're interested in learning more about:"
  end
end
