class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
end
