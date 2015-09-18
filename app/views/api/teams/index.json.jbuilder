json.epl do
  json.array!(@teams) do |team|
    json.extract! team, 'name', 'url'
  end
end