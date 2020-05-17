Fabricator(:one_time_key) do
  device
  key_id    { Faker::Alphanumeric.alphanumeric(number: 10) }
  key       { Faker::Alphanumeric.alphanumeric(number: 10) }
  signature { Faker::Alphanumeric.alphanumeric(number: 10) }
end
