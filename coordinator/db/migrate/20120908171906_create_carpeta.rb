class CreateCarpeta < ActiveRecord::Migration
  def change
    create_table :carpeta do |t|
      t.string :nombre
      t.integer :codigo
      t.integer :docid
      t.integer :anoingreso
      t.integer :semestre

      t.timestamps
    end
  end
end
