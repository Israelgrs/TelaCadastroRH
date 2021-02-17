json.extract! cadastro, :id, :name, :address, :email, :telefone, :cargo, :pretencao_salarial, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
