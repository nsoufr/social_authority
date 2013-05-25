require 'test_helper'

describe SocialAuthority::Query do
  it { must_respond_to :access_id }
  it { must_respond_to :secret_key }
  it { must_respond_to :user  }

end