json.array!(@plan_cuenta) do |plan_cuentum|
  json.extract! plan_cuentum, :id, :codificacion, :descripcion
  json.url plan_cuentum_url(plan_cuentum, format: :json)
end
