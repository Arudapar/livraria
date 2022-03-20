class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.references :genero, foreign_key: true
      t.string :ano

      t.timestamps
    end
  end
end
