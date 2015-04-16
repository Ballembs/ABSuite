xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Get started News"
    xml.description "Whats goin on in ABSuite"
    xml.link get_starteds_url(:rss)
    
    for news in @get_starteds
      xml.item do
        xml.title news.title
        xml.description news.content
        xml.content news.image
        xml.frame news.link
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.link get_starteds_path(news)
        xml.guid get_starteds_path(news)
      end
    end
  end
end

