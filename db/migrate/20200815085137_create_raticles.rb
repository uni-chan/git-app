class CreateRaticles < ActiveRecord::Migration[6.0]
  def change
    create_table :raticles do |t|
      t.string :title
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
