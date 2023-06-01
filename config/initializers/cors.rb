Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3000', 'localhost:3001'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options],
    expose: ['access-token', 'expiry', 'token-type', 'uid', 'client']
  end
end
