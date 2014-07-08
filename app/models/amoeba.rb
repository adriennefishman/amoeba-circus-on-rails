class Amoeba < ActiveRecord::Base
  has_one :talent
  belongs_to :act
end
