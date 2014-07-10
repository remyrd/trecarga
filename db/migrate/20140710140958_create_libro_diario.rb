class CreateLibroDiario < ActiveRecord::Migration
  def change
    create_table :libro_diarios do |t|
      t.date :fecha
      t.text :tipo_cambio
      t.text :cuenta
      t.money :deber
      t.money :haber
      t.text :glosario
      t.boolean :obsoleto
      t.integer :tipo
    end
  end
end
