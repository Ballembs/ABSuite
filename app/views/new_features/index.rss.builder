xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "New Features"
    xml.description "ABSuite stunning features in this release"
    xml.link new_features_url(:rss)
    
    for feature in @new_features
      xml.item do
        xml.title feature.name
        xml.description feature.content
        xml.pubDate feature.created_at.to_s(:rfc822)
        xml.link new_feature_path(feature)
        xml.guid new_feature_path(feature)
      end
    end
  end
end