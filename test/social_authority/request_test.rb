require 'test_helper'
require 'pp'
describe SocialAuthority::Request do

  let(:credentials) do
    { access_id: 'some_access_id',
      secret_key: 'some_secret_key' }
  end

  let(:users) { %w{nandosousafr aryrabelo fabioricotta} }
  let(:request) { SocialAuthority::Request.new credentials.merge(users: users) }


  subject { request }

  it { subject.must_respond_to :access_id }
  it { subject.must_respond_to :secret_key }
  it { subject.must_respond_to :users  }
  it { subject.must_respond_to :url  }
  it { subject.must_respond_to :timestamp }
  it { subject.must_respond_to :data }

  it { subject.users.must_include 'nandosousafr' }
  it { subject.timestamp.wont_be_nil /\d.*/ }

  before "#get_data" do
    VCR.use_cassette "get_data", match_requests_on: [:method, :path] do
      subject.get_data
    end 
  end

  it { subject.data[0][:user_id].must_equal "91193168" } 
  it { subject.data[0][:social_authority].must_equal "1" }
  it { subject.data[0][:screen_name].must_equal "aryrabelo" }
end
