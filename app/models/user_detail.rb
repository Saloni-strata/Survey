class UserDetail < ActiveRecord::Base
  attr_accessible :uemail,  :surveydetail_id
  belongs_to :surveydetail
  has_many :user_responses, :foreign_key => :user_id
end
