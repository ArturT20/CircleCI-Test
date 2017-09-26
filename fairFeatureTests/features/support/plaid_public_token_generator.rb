class PlaidPublicTokenGenerator
  def self.generate
    headers = {
      'Content-Type' => 'application/json',
      'Accept-Language' => 'en-US,en;q=0.8',
      'Connection' => 'keep-alive'
    }
    body = {
      credentials: {
        username: ENV.fetch('PLAID_INSTITUTION_USERNAME', 'user_good'),
        password: ENV.fetch('PLAID_INSTITUTION_PASSWORD', 'pass_good')
      },
      initial_products: ['auth'],
      institution_id: ENV.fetch('PLAID_INSTITUTION_ID', 'ins_4'),
      options: {},
      public_key: ENV['PLAID_PUBLIC_KEY']
    }

    response = RestClient::Request.execute(
      method: :post,
      url: "https://#{ENV['PLAID_ENV']}.plaid.com/link/item/create",
      headers: headers,
      payload: body.to_json
    )

    JSON.parse(response.body)['public_token']
  end
end
