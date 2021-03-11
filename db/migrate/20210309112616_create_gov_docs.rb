class CreateGovDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :gov_docs do |t|
      t.string :documentname
      t.string :documentid
      t.string :documenttype

      t.timestamps
    end
  end
end
