class TheatreCliGem::Show
  attr_accessor :name, :url, :showdoc, :theater, :summary

  @@all = []
  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrape_shows
    doc = Nokogiri::HTML(open("https://www.broadway.org/shows"))
    shows = doc.css("a.color-white.bold")
    shows.map do |show|
      self.new(show.text.strip, "https://www.broadway.org#{show.attr("href").strip}")
    end
  end

  def self.find(number)
    self.all[number-1]
  end

  def showdoc
    @showdoc = Nokogiri::HTML(open(self.url))
  end

  def theater
    @theater = self.showdoc.css("div.col-lg-6.col-md-9 p").text.gsub("\t","").gsub("map","").strip
  end

  def summary
    @summary = self.showdoc.css("div.col-lg-12.col-md-12.black-text p").text.strip
  end
end
