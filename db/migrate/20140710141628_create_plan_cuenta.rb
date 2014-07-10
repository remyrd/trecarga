class CreatePlanCuenta < ActiveRecord::Migration
  def change
    create_table :plan_cuenta do |t|
      t.text :codificacion
      t.text :descripcion
    end
  end
end
