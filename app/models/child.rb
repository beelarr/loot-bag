class Child < ApplicationRecord
  has_many :toys
  # validates_presence_of :first_name
end
