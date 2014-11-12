class WelcomeController < ApplicationController
  def index
    if params[:search]
      query = params[:search]
    else
      query = "Tiger Woods"
    end
    reply = get_video(query)
    @video_url = reply.videos[0].media_content[0].url
     @data = [{"Driver" => ["Fix your slice", "Get extra distance", "Play a draw"]},
          {"Putter" => ["Putting Aimpoint", "Putting Grip and technique", "Putting Distance control"]},
          {"Irons" => ["Swing Plane", "Impact Position", "c" ]},
          {"Wedges" => ["Bump and Run", "Wedge Control", "Wedge Distance Control"]},
          {"Drills" => ["a", "b", "c"]}]
  end

  def get_video(query)
    client = YouTubeIt::Client.new(:dev_key => ENV["YOUTUBE"])
    reply = client.videos_by(:query => query)
    if reply.videos.size == 0
      flash[:notice] = "The video you are looking for was not found"
    else
      reply
    end
  end
end

