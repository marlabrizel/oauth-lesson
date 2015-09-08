class User < ActiveRecord::Base
  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    # if there is a user in the db that matches the provider and uid, return that user. otherwise, create the record
    # check for both provider and uid because you can have the same uid for different providers

    user.email     = data.info.email
    user.nickname  = data.info.nickname
    user.image_url = data.info.image
    user.token     = data.credentials.token
    user.save!

    user
  end
end
