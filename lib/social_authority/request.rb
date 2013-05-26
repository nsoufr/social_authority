module SocialAuthority
  class Request
    include Utils

    attr_accessor :access_id, :secret_key, :users, :timestamp

    attr_reader :url, :data, :response

    def initialize args={}
      args.each do |key, value|
        self.send("#{key}=", value)
      end


      yield self if block_given?

      self.timestamp ||= Time.now.to_i + 500

    end

    def get_data

      url = URL_BASE
      # users
      url << "?screen_name=#{users.join(',')};"
      # auth
      signature = generate_signature access_id, secret_key, timestamp
      url << "AccessID=#{access_id};Timestamp=#{timestamp};Signature=#{signature}"

      @response = HTTParty.get url
      @data = response["_embedded"].collect do |user|
        {
          user_id: user["user_id"],
          social_authority: user["social_authority"],
          screen_name: user["screen_name"]
        }   
      end
    end


  end
end
