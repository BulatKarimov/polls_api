class SsApiTokenAuth < Faraday::Middleware

  def call(env)
    env[:request_headers]["Authorization"] = ENV['SS_API_TOKEN']
    @app.call(env)
  end
end
