class City < ApplicationRecord
  belongs_to  :regions
  has_many    :addresses

end
