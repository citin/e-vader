json.array!(@bills) do |bill|
  json.extract! bill, :id, :client_id, :person_id, :description, :total, :issue_date
  json.url bill_url(bill, format: :json)
end
