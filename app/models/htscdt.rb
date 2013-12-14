class Htscdt
  include Mongoid::Document
  field :htsus, type: String
  field :creation_date, type: Date
  field :author, type: String
  field :verified, type: String
  field :inv_description, type: String
  field :gen_eng_desc, type: String
  field :gen_esp_desc, type: String
  field :early_triggers, type: String
  field :legal_authority, type: String
  field :la_link, type: String
  field :other_link, type: String
  field :comments, type: String
  field :confidence, type: String
  field :image, type: String
end
