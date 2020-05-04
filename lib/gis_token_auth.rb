class GisTokenAuth < Faraday::Middleware

  def call(env)
    env[:request_headers]["Authorization"] = ENV['GIS_TOKEN']
    @app.call(env)
  end
end
