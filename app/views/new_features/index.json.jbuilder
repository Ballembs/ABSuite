json.array!(@new_features) do |new_feature|
  json.extract! new_feature, :id, :name, :content
  json.url new_feature_url(new_feature, format: :json)
end
