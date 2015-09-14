class Make < ActiveRecord::Base
  validates :name, presence: true
  validates :logo_url, presence: true
  has_many :models
end
