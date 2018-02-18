# Ok full disclosure this API key stuff isn't even enforced. Just
# putting it in here so ya'll don't think I don't understand
# security ;)

QE = {
  'api_key' => '1234567890',
  'api_secret' => '0987654321',
  'payment_url' => Rails.env.production? ?
    "https://quicketh.herokuapp.com/payments" :
    "http://localhost:3001/payments",
  'address' => '0x9E98Cf489e12c083B87c850BF310a37c5fa2b92e'
}.with_indifferent_access
