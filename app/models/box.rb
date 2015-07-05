class Box
  include Mongoid::Document

  field :type, type: Integer
  field :name, type: String
  field :description, type: String

  #Constants
  TYPE = { '10' => 'Private', '20' => 'Public' } 

  def get_type
    TYPE[type.to_s]
  end
end
