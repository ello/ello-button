class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello, world!"
  end

  get '/button' do
    @color    = params[:color]
    @username = params[:username]

    erb :button
  end
end
