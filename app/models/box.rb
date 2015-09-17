class Box
  include Mongoid::Document

  field :name, type: String
  field :private, type: Boolean
  field :description, type: String
end