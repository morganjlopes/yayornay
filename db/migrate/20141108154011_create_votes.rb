class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer  :question_id
      t.boolean  :agreement, :default => false, :null => false

      t.timestamps
    end
  end
end
