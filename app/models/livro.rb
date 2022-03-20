class Livro < ApplicationRecord
  belongs_to :genero
  belongs_to :autor
  belongs_to :titulo
end
