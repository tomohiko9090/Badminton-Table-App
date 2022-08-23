require 'sinatra'

get '/' do
    erb :index
end

get '/input1_setting' do 
    erb :input1_setting
end

post '/input1_setting' do 
    erb :input1_setting
end

post '/input2_name' do 
    erb :input2_name
end

post '/input3_strength' do 
    erb :input3_strength
end

post '/input4_type' do 
    erb :input4_type
end

post '/table' do 
    erb :table
end