class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.string :shape

      t.timestamps
    end
  end
end
