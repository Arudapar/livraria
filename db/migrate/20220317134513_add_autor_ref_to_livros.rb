class AddAutorRefToLivros < ActiveRecord::Migration[5.2]
  def change
    add_reference :livros, :autor, foreign_key: true
  end
end
