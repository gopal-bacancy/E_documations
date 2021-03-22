class AddColumnToDocs < ActiveRecord::Migration[6.1]
  def change
    add_column :edu_docs, :user_id, :integer
    add_column :gov_docs, :user_id, :integer
    add_index :edu_docs,:user_id
    add_index :gov_docs,:user_id
  end
end
