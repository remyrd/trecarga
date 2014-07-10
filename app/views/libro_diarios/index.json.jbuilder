json.array!(@libro_diarios) do |libro_diario|
  json.extract! libro_diario, :id, :fecha, :tipo_cambio, :cuenta, :deber, :haber, :glosario, :obsoleto, :tipo
  json.url libro_diario_url(libro_diario, format: :json)
end
