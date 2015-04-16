xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Get started News"
    xml.description "Whats goin on in ABSuite"
    xml.link get_started_pdf_url(:rss)
    
    for news in @get_started_pdfs
      xml.item do
        xml.title news.title
        xml.description news.content
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.link get_started_pdfs_path(news)
        xml.guid get_started_pdfs_path(news)
      end
    end
  end
end

