class ElloButtonApp < Sinatra::Base
  configure do
    set :protection, :except => :frame_options
  end

  get '/button' do
    @color          = params[:color]
    @username       = params[:username]
    @size           = params[:size] || 'large'
    @skip_analytics = (request.env['HTTP_DNT'] == '1')

    erb :button
  end

  get '/:username' do
    redirect "https://ello.co/#{params[:username]}"
  end
end
