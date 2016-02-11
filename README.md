# OmniAuth Naver

This is the OmniAuth strategy for authenticating to Naver. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Naver](https://developers.naver.com/docs/login/overview).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-naver'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-naver

## Usage

```ruby
use OmniAuth::Builder do
  provider :naver, ENV['NAVER_KEY'], ENV['NAVER_SECRET']
end
```

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  "provider"=>"naver",
  "uid"=>"86744e27d4bfdb3cddb478293d295cf783ce9ed41f0ad7687bac26e97a1ed1b4",
  "info"=>{
    "name"=>"홍길동",
    "email"=>"foobar@naver.com",
    "gender"=>"male",
    "image"=>"https://phinf.pstatic.net/contactthumb/52/2014/8/4/kimsuerim_1407162661934.jpg"
  },
  "credentials"=>{
    "token"=>"AAAAOaaPwFPh1sKav5f5XBbRNfMmqudjxdGsVJQCJdRXKWmWmxAgXwlk29365tU1S4j3oXjG3HpnGG4w+CoJ+gg5eDA=",
    "refresh_token"=>"kgA4WSgY8h5ZWYFgGxpd0jjGcPTGqf1vUdGq2nj7rfupHMUxUa9adXJhbddMzadB1X9djhfCbBisZGMUsisCp4XuPMRjiiz4yTSG93y3ziiQerTdOUJKuW6VVR5FQLHxj87y",
    "expires_at"=>1455173853,
    "expires"=>true
  },
  "extra"=>{
    "raw_info"=>{
      "data"=>{
        "result"=>{
          "resultcode"=>"00",
          "message"=>"success"
        },
        "response"=>{
          "email"=>"foobar@naver.com",
          "nickname"=>"foobar",
          "enc_id"=>"86744e27d4bfdb3cddb478293d295cf783ce9ed41f0ad7687bac26e97a1ed1b4",
          "profile_image"=>"https://phinf.pstatic.net/contactthumb/52/2014/8/4/kimsuerim_1407162661934.jpg?type=s80",
          "age"=>"30-39",
          "gender"=>"M",
          "id"=>"48407261",
          "name"=>"홍길동",
          "birthday"=>"01-08"
        }
      }
    }
  }
}
```

## Contributing

1. Fork it ( https://github.com/kimsuelim/omniauth-naver/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
