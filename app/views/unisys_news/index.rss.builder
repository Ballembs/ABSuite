xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Unisys News"
    xml.description "Whats goin on in ABSuite"
    xml.link new_features_url(:rss)
    
    for news in @unisys_news
      xml.item do
        xml.title news.title
        xml.description news.description
        xml.link news.link
        xml.tag news.category
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.guid latest_news_path(news)
      end
    end
  end
end