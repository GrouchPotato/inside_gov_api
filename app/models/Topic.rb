class Topic
  attr_reader :slug, :name

  def initialize(attrs = {})
    @slug = attrs[:slug]
    @name = attrs[:name]
  end

  #Not sure what should be responsible for this yet.
  def canonical_url
    "http://localhost:3020/government/topics/#{slug}"
  end
end
