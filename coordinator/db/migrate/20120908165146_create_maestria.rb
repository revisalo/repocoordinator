class CreateMaestria < ActiveRecord::Migration
  def change
    create_table :maestria do |t|
      t.string :codigo

      t.timestamps
    end
  end
end
