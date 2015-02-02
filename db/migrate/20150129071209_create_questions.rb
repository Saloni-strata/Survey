class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :sid
      t.string :qid
      t.string :type
      t.string :que
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.string :opt4

      t.timestamps
    end
  end
end
