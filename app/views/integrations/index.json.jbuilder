json.array!(@integrations) do |integration|
  json.extract! integration, :id, :api_key, :api_token, :name, :type
  json.url integration_url(integration, format: :json)
end
