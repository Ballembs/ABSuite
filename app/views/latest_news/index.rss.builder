xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "ABsuite News"
    xml.description "Whats goin on in ABSuite"
    xml.link new_features_url(:rss)
    
    for news in @latest_news
      xml.item do
        xml.title news.heading
        xml.description news.content
        xml.frame news.link
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.link latest_news_path(news)
        xml.guid latest_news_path(news)
      end
    end
  end
end

