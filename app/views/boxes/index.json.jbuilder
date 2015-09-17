json.array!(@boxes) do |box|
  json.extract! box, :id, :name, :private, :description
  json.url box_url(box, format: :json)
end
