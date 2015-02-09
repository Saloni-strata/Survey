class Surveydetail < ActiveRecord::Base
  attr_accessible :surveyname
  has_many :questions
  has_many :user_details
end
