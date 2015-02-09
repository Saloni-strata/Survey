class CreateUserResponses < ActiveRecord::Migration
  def change
    create_table :user_responses do |t|
      t.integer :user_id
      t.integer :surveydetail_id
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
