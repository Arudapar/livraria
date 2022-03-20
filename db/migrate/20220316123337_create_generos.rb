class CreateGeneros < ActiveRecord::Migration[5.2]
  def change
    create_table :generos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
