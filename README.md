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
  :provider=>"naver",
  :uid=>"48436401",
  :info=>{
    :name=>"홍길동",
    :email=>"foobar@naver.com",
    :gender=>"male",
    :image=>"https://phinf.pstatic.net/contactthumb/52/2014/8/4/kimsuerim_1407162661934.jpg",
    :nickname=>"길동"
  },
  :credentials=>{
    :token=>"AAAAObBDnBitK5i1qRDH4S2OUFvBMMsxWURxpLPNPhQyIyb7bIfH/dUqf1T3e5a5A87X6SntI74aUVIMPupBqKPYB3s=",
    :refresh_token=>"zdaiiVqKazKWlunUlTbgqjGs0LujvvWjNipKMQSXRQipVFJ5PT0TjNTaq1Yj3oRkaCAUAtMAxHipX2qqzdRNxDoetN7h1Z68YICNujmBjdcZ8aT93sNqxMKXwBgsKW6LPlez",
    :expires_at=>1526543399,
    :expires=>true
  },
  :extra=>{
    :raw_info=>{
      :resultcode=>"00",
      :message=>"success",
      :response=>{
        :id=>"48436401",
        :nickname=>"길동",
        :profile_image=>"https://phinf.pstatic.net/contactthumb/52/2014/8/4/kimsuerim_1407162661934.jpg",
        :age=>"30-39",
        :gender=>"M",
        :email=>"foobar@naver.com",
        :name=>"홍길동",
        :birthday=>"01-08"
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
