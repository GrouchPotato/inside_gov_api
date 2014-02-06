class TopicPresenter < Struct.new(:topic)
  def as_json_summary(opts = {})
    {
      name: topic.name,
      canonical_url: topic.canonical_url
    }
  end
end
