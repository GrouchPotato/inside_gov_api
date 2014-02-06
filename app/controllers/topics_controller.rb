class TopicsController < ApplicationController
  def index
    topics = Whitehall::TopicProvider.get_index
    render json: TopicCollectionPresenter.new(topics)
  end
end
