class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :address
      t.binary :drawing
      t.string :e_mara

      t.timestamps
    end
  end
end
