class Todo < ApplicationRecord
    include Mongoid::Document
    embeds_many :items
    accepts_nested_attributes_for :items

    field :title, type: String
    field :created_by, type: String
    field :created_at, type: Date
    field :updated_at, type: Date
    field :items, type: Array[Item]

    validates_presence_of :title, :created_by

end
