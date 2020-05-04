GIS_API = Her::API.new
GIS_API.setup url: ENV['GIS_BASE_URL'] do |c|
  # Request
  c.use GisTokenAuth
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end

SS_API = Her::API.new
SS_API.setup url: ENV['SS_API_BASE_URL'] do |c|
  # Request
  c.use SsApiTokenAuth
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end
