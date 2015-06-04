json.array!(@photo_users) do |photo_user|
  json.extract! photo_user, :id, :user_id, :photo
  json.url photo_user_url(photo_user, format: :json)
end
