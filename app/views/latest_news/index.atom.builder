atom_feed do |feed|
  feed.title  "ABSuite news"
  
  @latest_news.each do |news|
    feed.entry news do |entry|
      entry.title news.heading
      entry.content news.content
      entry.logo  image_tag(news.image.url()).html_safe
    end
  end
end