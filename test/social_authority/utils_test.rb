require 'test_helper'
include SocialAuthority::Utils

describe SocialAuthority::Utils do
  it "#generate_signature" do
   access_id = 'member-Ng4ZzhiMjUwNWMtMGNmZi0OTjMd1YTkyNzBjLTTctlOThkNz'
   secret_key = 'gdrvdvwaphknkyupxlilfvkiczjawgza'
   generate_signature(access_id, secret_key, 500).must_equal 'iFyXuF6q7lS6B03aiQ%2BhR43wgBk%3D' 
  end
end

