class Career < ActiveRecord::Base
  has_many :accomplishments
  has_many :responsibilities
  has_many :tags
  has_one :achievement

  belongs_to :work_experience
end
