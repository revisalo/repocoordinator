class CreatePensums < ActiveRecord::Migration
  def change
    create_table :pensums do |t|
      t.integer :ano
      t.integer :semestre

      t.timestamps
    end
  end
end
