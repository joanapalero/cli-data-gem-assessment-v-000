class TopArtists::Scraper
  attr_accessor :home_page
  
  def initialize(song)
    self.home_page = song
  end
  
  def scrape_homepage
  
  url = "https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
#lists artist
  artist_listing = parsed_page.css("span.listItem__properties") 
  artist_hash = {}
  binding.pry
  # artist_hash[:name] 
  
  # artist_listing.each do |artist_listing|
  #   artist = {
  #         name: artist_listing.css("span.listItem__properties")[0..3].text
  #   }

  
  end

  def scrape 
  scrape_homepage
  end
end