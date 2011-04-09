class Jobvert < ActiveRecord::Base
  has_one :cover_letter
  has_one :recommendation
end
