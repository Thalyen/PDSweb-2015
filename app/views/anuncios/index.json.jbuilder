json.array!(@anuncios) do |anuncio|
  json.extract! anuncio, :id, :tipo, :titulo, :descricao, :anexo
  json.url anuncio_url(anuncio, format: :json)
end
