Fabricator(:device) do
  access_token
  account
  device_id        { Faker::Number.number(digits: 5) }
  name             { Faker::App.name }
  fingerprint_key  { Faker::Alphanumeric.alphanumeric(number: 10) }
  identity_key     { Faker::Alphanumeric.alphanumeric(number: 10) }
end
