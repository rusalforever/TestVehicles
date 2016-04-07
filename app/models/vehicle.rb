class Vehicle < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true,
            length: { minimum: 8 }
end
