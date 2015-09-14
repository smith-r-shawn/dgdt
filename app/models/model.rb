class Model < ActiveRecord::Base
  belongs_to :make
  belongs_to :disc_type
  has_many :people, through: :owns
end
