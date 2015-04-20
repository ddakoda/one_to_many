require 'bundler'
Bundler.require()

#connection
ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:database => 'one'
)

require './models/user'

#Routes
# get \api\users
# All users
get '/api/users' do
  content_type :json
  User.all.to_json
end
# get \api\users\:id
# A specific user
get '/api/users/:id' do
  user = User.find(params[:id].to_i)
  user.to_json
end
# post \api\users
# Create a new user
post '/api/users' do
  content_type :json
  user = User.create(params[:user])
  user.to_json
end
# put \api\users\:id
# Update an existing user
put '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end
# patch \api\users\:id
# Update an existing user
patch '/api/users/:id' do
  content_type :json
  chirp = User.find(params[:id].to_i).update(params[:user])
  chirp.to_json
end
# delete \api\users\:id
# Delete an existing user
delete '/api/users/:id' do
  content_type :json
  id = params[:id].to_i
  chirp = User.destroy(id)
end
# get \api\users\:user_id\chirps
# A specific user's chirps
get '/api/users/:user_id/chirps' do
  content_type :json
  User.all.to_json
end
# get \api\users\:user_id\chirps\:id
# A specific user's specific chirp
get '/api/users/:user_id/chirps/:id' do
  user = User.find(params[:id].to_i)
  user.to_json
end
# post \api\users\:user_id\chirps
# Create a Chirp for a user
post '/api/users/:user_id/chirps' do
  content_type :json
  user = User.create(params[:user])
  user.to_json
end
# put \api\users\:user_id\chirps\:id
# Update a user's existing chirp
put '/api/users/:user_id/chirps/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end
# patch \api\users\:user_id\chirps\:id
# Update a user's existing chirp
patch '/api/users/:user_id/chirps/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end
# delete \api\users\:user_id\chirps\:id
# Delete a user's existing chirp
delete '/api/users/:user_id/chirps/:id' do
  content_type :json
  id = params[:id].to_i
  user = User.destroy(id)
end
