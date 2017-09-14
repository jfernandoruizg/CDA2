class CreateAvions < ActiveRecord::Migration[5.1]
  def change
    create_table :avions do |t|
      t.string :matricula
      t.string :npiloto
      t.string :apiloto
      t.string :destino
      t.string :origen
      t.time :hsalidao
      t.date :fsalidao
      t.time :hllegadad
      t.date :fllegadad

      t.timestamps
    end
  end
end
