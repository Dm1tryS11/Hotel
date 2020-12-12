json.extract! proposal, :id, :name, :passport, :email, :arrival, :departure, :accept, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)
