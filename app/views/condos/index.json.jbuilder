json.array!(@condos) do |condo|
  json.extract! condo, :id, :name, :url, :status
  json.url condo_url(condo, format: :json)
end
