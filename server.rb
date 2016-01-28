class HelloWorldApp < Sinatra::Base
  configure do
    set :protection, :except => :frame_options
  end

  get '/' do
    "Hello, world!"
  end

  get '/button' do
    @color    = params[:color]
    @username = params[:username]

    erb :button
  end
end
