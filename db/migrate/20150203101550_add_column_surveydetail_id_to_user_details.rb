class AddColumnSurveydetailIdToUserDetails < ActiveRecord::Migration
  def change
  	add_column :user_details, :surveydetail_id, :integer
  	remove_column :user_details, :uname

  	add_column :user_responses, :user_id, :integer
    remove_column :user_responses, :email_id
    remove_column :user_responses, :surveydetail_id

  end
end
