# Ok full disclosure this isn't even enforeced. Just
# putting it in here so ya'll don't think I don't
# understand security ;)
QE = {
  'api_key' => '1234567890',
  'api_secret' => '0987654321',
  'payment_url' => Rails.env.production? ?
    "https://quicketh.herokuapp.com/payments" :
    "http://quicketh.dev/payments",

  'address' => '0x1234567890987654321234567890'
}.with_indifferent_access
