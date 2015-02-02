class RemoveQidColumnFromQuestions < ActiveRecord::Migration
  def up
  	remove_column :questions, :qid
  	remove_column :questions, :opt1
  	remove_column :questions, :opt2
  	remove_column :questions, :opt3
  	remove_column :questions, :opt4
  end

  def down
  end
end
