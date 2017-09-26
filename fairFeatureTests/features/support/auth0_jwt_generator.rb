require 'jwt'

class Auth0JwtGenerator
  def self.generate(email)
    JWT.encode(
      {
        iss: ENV['AUTH0_DOMAIN'],
        aud: ENV['AUTH0_CLIENT_ID'],
        sub: "email|fake|#{SecureRandom.uuid}",
        email: email,
        exp: Time.now.to_i + 600
      },
      ENV['AUTH0_SIGNING_SECRET'],
      'HS256'
    )
  end
end
