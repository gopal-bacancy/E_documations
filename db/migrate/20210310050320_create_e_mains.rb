class CreateEMains < ActiveRecord::Migration[6.1]
  def change
    create_table :e_mains do |t|

      t.timestamps
    end
  end
end
