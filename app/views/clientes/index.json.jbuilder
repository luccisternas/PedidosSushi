json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :fono
  json.url cliente_url(cliente, format: :json)
end
