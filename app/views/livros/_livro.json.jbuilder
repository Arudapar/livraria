json.extract! livro, :id, :nome, :autor, :genero_id, :ano, :created_at, :updated_at
json.url livro_url(livro, format: :json)
