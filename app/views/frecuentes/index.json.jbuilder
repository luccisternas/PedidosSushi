json.array!(@frecuentes) do |frecuente|
  json.extract! frecuente, :id, :email, :cliente_id
  json.url frecuente_url(frecuente, format: :json)
end
