class CreateLibroDiarios < ActiveRecord::Migration
  def change
    create_table :libro_diarios do |t|
      t.date :fecha
      t.text :tipo_cambio
      t.text :plan_cuentum_id
      t.float :deber
      t.float :haber
      t.text :glosario
      t.boolean :obsoleto
      t.integer :tipo

      t.timestamps
    end
  end
end
