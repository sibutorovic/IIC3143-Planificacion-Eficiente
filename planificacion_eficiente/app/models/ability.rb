class Ability < ApplicationRecord
  has_and_belongs_to_many :unit_plans
end
