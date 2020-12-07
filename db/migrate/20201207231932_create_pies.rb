class CreatePies < ActiveRecord::Migration[6.0]
  def change
    create_table :pies do |t|
      t.string :title
      t.string :pieces
      t.string :chunks

      t.timestamps
    end
  end
end
