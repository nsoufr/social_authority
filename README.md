# social_authority
[![Build Status](https://travis-ci.org/nandosousafr/social_authority.png?branch=master)](https://travis-ci.org/nandosousafr/social_authority)

Tiny Wrapper gem for https://followerwonk.com/social-authority

## Getting Started

1. visit `https://followerwonk.com/social-authority` and get your credentials (`access_id`, `secret_id`).

### Installing gem

```
  gem install social_authority
```
or in your Gemfile

```ruby
  gem 'social_authority', git: 'git://github.com/nandosousafr/social_authority.git'
```

### Usage

```ruby
  require 'social_authority'
  
  request = SocialAuthority::Request.new access_id: ENV['ACCESS_ID'], 
                                                    secret_key: ENV['SECRET_KEY']
  
  request.users =  [:aryrabelo, :nandosousafr]
  
  #  fetching api
  request.get_data
  
  # results
  request.data
  # => [{:user_id=>"91193168", :social_authority=>"1", :screen_name=>"aryrabelo"}, {:user_id=>"35685819", :social_authority=>"6.98", :screen_name=>"nandosousafr"}] 
```  
### Todo
1. Implement `Handling of Exceptions`


### Author
  [Nando Sousa](http://twitter.com/nandosousafr)


  


