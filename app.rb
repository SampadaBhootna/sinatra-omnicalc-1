require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
    
    erb(:square_new)
    
end

get("/square/results") do
  @the_num=params.fetch("number").to_f
  @the_result=@the_num**2

  erb(:square_results)

end

#Square Root Calculation#

get("/square_root/new") do

  erb(:square_root_calc)

end

get("/square_root/results") do

  @the_num=params.fetch("user_number").to_f
  @the_result=@the_num**0.5

  erb(:square_root_results)
end

#EMI Payment calculcator#
get("/payment/new") do

  erb(:payment_calc)

end

get("/payment/results") do
  @I=params.fetch("user_apr").to_f
  @Y=params.fetch("user_years").to_f 
  @P=params.fetch("user_pv").to_f

  @the_result= (@P*@I*(1+@I)**(@Y*12))/((1+@I)**(@Y*12)-1)

  erb(:payment_results)

end

#Pick Random Number#
get("/random/new") do
  erb(:random_num_calc)
end

get("/random/results") do
  @the_max=params.fetch("user_max").to_f
  @the_min=params.fetch("user_min").to_f

  @the_result=rand(@the_min..@the_max)

  erb(:random_results)
end
