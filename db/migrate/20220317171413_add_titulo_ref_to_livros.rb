class AddTituloRefToLivros < ActiveRecord::Migration[5.2]
  def change
    add_reference :livros, :titulo, foreign_key: true
  end
end
