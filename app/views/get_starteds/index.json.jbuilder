json.array!(@get_starteds) do |get_started|
  json.extract! get_started, :id, :title, :content, :link
  json.url get_started_url(get_started, format: :json)
end
