class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.integer :numero
      t.integer :creditos
      t.string :profesor

      t.timestamps
    end
  end
end
