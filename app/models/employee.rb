class Employee < ApplicationRecord
  belongs_to :roles
  belongs_to :positions
  belongs_to :businesses
  belongs_to :address


end
