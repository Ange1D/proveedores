class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :razonSocial
      t.string :rfc
      t.string :nombre
      t.string :apellidoPaterno
      t.string :apellidoMaterno
      t.string :correo
      t.string :clabe
      t.boolean :Pago

      t.timestamps
    end
  end
end
