# Template defines the entities that need transcribing
class Template
  include MongoMapper::Document
  
  key :name, String
  key :description, String
  key :project, String
  
  key :display_width, Integer
  key :display_height, Integer
  key :default_zoom, String # (can you do decimal keys in Mongo Mapper?)
  
  timestamps!
  
  many :assets
  many :entities
end