class CreateCadastros < ActiveRecord::Migration[6.1]
  def change
    create_table :cadastros do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :telefone
      t.string :cargo
      t.float :pretencao_salarial

      t.timestamps
    end
  end
end
