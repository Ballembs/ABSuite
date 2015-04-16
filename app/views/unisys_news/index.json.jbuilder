json.array!(@unisys_news) do |unisys_news|
  json.extract! unisys_news, :id, :title, :link
  json.url unisys_news_url(unisys_news, format: :json)
end
