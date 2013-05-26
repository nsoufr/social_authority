require 'base64'
require 'openssl'
require 'cgi'
require 'hmac-sha1'
require 'social_authority/utils'
require 'social_authority/request'
require 'httparty'

module SocialAuthority
  extend self
  URL_BASE = 'https://api.followerwonk.com/social-authority'

end
