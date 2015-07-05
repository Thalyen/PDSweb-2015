json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :email, :qualificacao, :tipo, :unidade
  json.url usuario_url(usuario, format: :json)
end
