class Question < ActiveRecord::Base
  attr_accessible  :que, :question_type, :surveydetail_id
  
  belongs_to :surveydetail
  has_many :options
end
