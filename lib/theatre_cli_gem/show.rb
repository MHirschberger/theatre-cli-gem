class TheatreCliGem::Show
  attr_accessor :name, :theater, :opening_date, :summary
  def self.current
    #return bunch of instances of shows
    #puts <<-DOC
    #  1. The Phantom of the Opera
    #  2. Dear Evan Hansen
    #DOC
    show_1 = self.new
    show_1.name = "The Phantom of the Opera"
    show_1.theater = "Majestic Theatre"
    show_1.opening_date = "Jan 26, 1988"
    show_1.summary = "Based on the 1910 horror novel by Gaston Leroux, which has been adapted into countless films, The Phantom of the Opera follows a deformed composer who haunts the grand Paris Opera House. Sheltered from the outside world in an underground cavern, the lonely, romantic man tutors and composes operas for Christine, a gorgeous young soprano star-to-be. As Christine’s star rises, and a handsome suitor from her past enters the picture, the Phantom grows mad, terrorizing the opera house owners and company with his murderous ways. Still, Christine finds herself drawn to the mystery man. Audiences agree—The Phantom of the Opera is Broadway’s longest-running hit. Ever."

    show_2 = self.new
    show_2.name = "Dear Evan Hansen"
    show_2.theater = "Majestic Theatre"
    show_2.opening_date = "Jan 26, 1988"
    show_2.summary =  "A letter that was never meant to be seen, a lie that was never meant to be told, a life he never dreamed he could have. Evan Hansen is about to get the one thing he’s always wanted: A chance to finally fit in.

Both deeply personal and profoundly contemporary, Dear Evan Hansen is the new American musical about life and the way we live it.

Dear Evan Hansen has struck a remarkable chord with audiences and critics everywhere. The New York Times calls it “a gorgeous new musical for anyone with a beating heart.” And NBC Nightly News calls this bold new musical “an anthem resonating on Broadway and beyond.”"
  [show_1, show_2]
  end
end
