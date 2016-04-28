get "/login" do
  @user = User.new
  erb :'login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "users/#{@user.id}"
  else
    @user = User.new
    @errors = ["Sorry, Incorrect Email or password."]
    erb :'login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
