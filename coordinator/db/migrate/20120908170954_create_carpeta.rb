class CreateCarpeta < ActiveRecord::Migration
  def change
    create_table :carpeta do |t|
      t.string :nombre
      t.integer :codigo
      t.integer :docid
      t.integer :anoingreso
      t.integer :semestreingreso
      t.array :materiasvista
      t.array :materiafaltante
      t.array :materiaactual

      t.timestamps
    end
  end
end
