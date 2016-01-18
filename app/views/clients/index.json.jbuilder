json.array!(@clients) do |client|
  json.extract! client, :id, :name, :surname, :birthdate, :gender, :du, :cui
  json.url client_url(client, format: :json)
end
