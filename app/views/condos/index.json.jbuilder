json.array!(@condos) do |condo|
  json.extract! condo, :id, :latitude, :longitude, :address, :name, :contact
  json.url condo_url(condo, format: :json)
end
