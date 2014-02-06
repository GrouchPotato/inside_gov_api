class JsonProvider
  def self.endpoint_base
    ""
  end

private
  def self.get(path = "")
    JSON.parse(Net::HTTP.get(URI.parse(endpoint_base + path + '.json')))
  end
end
