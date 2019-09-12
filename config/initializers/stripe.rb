Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.aws[:stripe_publishable_key] ,
  :secret_key      => Rails.application.credentials.aws[:stripe_secret_key]
}

Stripe.api_key = Rails.application.credentials.aws[:stripe_secret_key]