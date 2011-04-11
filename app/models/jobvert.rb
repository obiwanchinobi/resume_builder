class Jobvert < ActiveRecord::Base
  has_many :accomplishments
  has_one :cover_letter
  has_one :recommendation
  has_one :work_experience
  has_one :achievement
end
