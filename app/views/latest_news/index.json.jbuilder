json.array!(@latest_news) do |latest_news|
  json.extract! latest_news, :id, :heading, :subheading, :content
  json.url latest_news_url(latest_news, format: :json)
end
