class UserResponse < ActiveRecord::Base
  attr_accessible :answer, :question_id, :user_id
  belongs_to :user_detail
  belongs_to :question
end
