class Business < ApplicationRecord
  validates :name, :presence => true
  validates :address, :presence => true
  validates :description, :presence => true
  scope(:name_search, ->(name) do 
    where({:name => name})
  end)
end
