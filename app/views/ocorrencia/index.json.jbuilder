json.array!(@ocorrencia) do |ocorrencium|
  json.extract! ocorrencium, :id, :titulo, :descricao, :data
  json.url ocorrencium_url(ocorrencium, format: :json)
end
