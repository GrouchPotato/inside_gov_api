module Whitehall
  class TopicProvider < JsonProvider
    def self.endpoint_base
      "http://localhost:3020/government"
    end

    def self.get_index
      topic_hashes = get("/topics")
      topic_hashes.map { |topic_hash| build_topic(topic_hash) }
    end

  private
    def self.build_topic(topic_hash)
      Topic.new(
        name: topic_hash["name"],
        slug: topic_hash["slug"]
      )
    end
  end
end
