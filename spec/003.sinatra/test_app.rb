class TestApp < Sinatra::Base
  get '/' do
    ""
  end

  post '/' do
    ""
  end

  get '/zag' do
    ""
  end

  get '/zig' do
    redirect '/zag'
  end

  post '/profile' do
    @name = params[:name]
    @occupation = params[:occupation]
    "<h1>#{@name}</h1><h2>#{@occupation}</h2>"
  end

  get '/search' do
    # DO NOT MODIFY THIS!
    "#{params[:q]} #{params[:order]}"
  end
  
  get '/hello/:name' do
    @name = params[:name]
    "Hello #{@name}!"
  end

end
