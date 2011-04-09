class Recommendation < ActiveRecord::Base
  belongs_to :jobvert
  has_many :praises
end
