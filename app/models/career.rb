class Career < ActiveRecord::Base
  has_many :accomplishments
  has_one :achievement
  belongs_to :work_experience
end
