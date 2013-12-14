json.array!(@htscdts) do |htscdt|
  json.extract! htscdt, :id, :htsus, :creation_date, :author, :verified, :inv_description, :gen_eng_desc, :gen_esp_desc, :early_triggers, :legal_authority, :la_link, :other_link, :comments, :confidence, :image
  json.url htscdt_url(htscdt, format: :json)
end
