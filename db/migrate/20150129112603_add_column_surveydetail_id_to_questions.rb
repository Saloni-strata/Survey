class AddColumnSurveydetailIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :surveydetail_id, :integer
    remove_column :questions, :sid
  end
end
