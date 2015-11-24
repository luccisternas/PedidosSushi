class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :cliente, index: true
      t.references :producto, index: true
      t.text :observacion

      t.timestamps
    end
  end
end
