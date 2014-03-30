require 'sinatra/base'
class App < Sinatra::Application

  TASK_LIST = []
  get '/' do
    erb :index, locals: {:task => TASK_LIST}
  end

  get '/add' do
    erb :add
  end

  post '/add' do
    TASK_LIST << params[:task]
    redirect ('/')
  end
end