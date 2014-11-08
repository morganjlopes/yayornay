class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text     :title
      t.text     :description
      t.boolean  :is_public, :default => false, :null => false

      t.timestamps
    end
  end
end
