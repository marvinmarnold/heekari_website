json.array!(@installation_details) do |installation_detail|
  json.extract! installation_detail, :id, :home_type_id, :num_rooms, :num_ppl, :light_type_id
  json.url installation_detail_url(installation_detail, format: :json)
end
