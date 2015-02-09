class AddColumnEmailIdToUserResponses < ActiveRecord::Migration
  def change
  	 add_column :user_responses, :email_id, :string
     remove_column :user_responses, :user_id
  end
end
