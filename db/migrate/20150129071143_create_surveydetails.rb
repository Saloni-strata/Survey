class CreateSurveydetails < ActiveRecord::Migration
  def change
    create_table :surveydetails do |t|
      t.string :sid
      t.string :surveyname

      t.timestamps
    end
  end
end
