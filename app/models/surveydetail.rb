class Surveydetail < ActiveRecord::Base
  attr_accessible :surveyname
  has_many :questions
end
