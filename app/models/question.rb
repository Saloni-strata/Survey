class Question < ActiveRecord::Base
  attr_accessible  :que, :question_type, :surveydetail_id
  validates :que, presence: true, allow_blank: false
  belongs_to :surveydetail
  has_many :options

 
end
