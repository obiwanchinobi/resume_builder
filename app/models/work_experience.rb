class WorkExperience < ActiveRecord::Base
  has_many :careers
  belongs_to :jobvert
end
