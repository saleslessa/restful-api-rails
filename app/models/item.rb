class Item < ApplicationRecord
  include Mongoid::Document
  
  field :name, type: String
  field :done, type: Boolean
  field :created_at, type: Date
  field :updated_at, type: Date

  embedded_in :todo

  validates_presence_of :name
end
