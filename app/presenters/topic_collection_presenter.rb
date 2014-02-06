class TopicCollectionPresenter < Struct.new(:topics)
  def as_json(opts = {})
    topics.map { |topic| TopicPresenter.new(topic).as_json_summary }
  end
end
