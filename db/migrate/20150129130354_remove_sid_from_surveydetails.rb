class RemoveSidFromSurveydetails < ActiveRecord::Migration
  def up
    remove_column :surveydetails, :sid
  end

  def down
    add_column :surveydetails, :sid, :string
  end
end
