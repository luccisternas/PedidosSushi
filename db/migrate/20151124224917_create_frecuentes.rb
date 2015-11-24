class CreateFrecuentes < ActiveRecord::Migration
  def change
    create_table :frecuentes do |t|
      t.string :email
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
