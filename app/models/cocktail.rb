class Cocktail < ApplicationRecord
  #has_many :doses

  validations :name, presence: true, uniqueness: true
end
