class HomeController < ApplicationController
  def index
    channel = Yt::Channel.new(id: 'UC5CRP-6oxYenIgBj17CkBZg')

    @videos = []

    channel.videos.first(30).each do |video|
      @videos << Video.create(
        uid: video.id,
        title: video.title,
        desc: video.description
      )
    end

    @videos
  end
end
