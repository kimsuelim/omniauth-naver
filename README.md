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
  provider: naver
  uid: 86744e27d4bfdb3cddb478293d295cf783ce9ed41f0ad7687bac26e97a1ed1b4
  info: !ruby/hash:OmniAuth::AuthHash::InfoHash
    name: "foobar"
    email: foobar@naver.com
    gender: male
    image: https://ssl.pstatic.net/static/pwe/address/nodata_33x33.gif
  credentials: !ruby/hash:OmniAuth::AuthHash
    token: AAAAOpVbMMMRWuRxewGhFqvGu92+Ri8hZ+i3QIId2vq/nDRHhzIbFXCEuGoWsjeZt9VV1KA+6IAB6lQtWidEYSjpgYU=
    refresh_token: 2hHBogSApL4Z2tDW1ippPmrPiiWMiiiseId6LcJRmFTzARYkSzQmHbqAlqBgkIvYisS0tjisTCEBDaMmyaKZwuKo3ATGBsoQjzLmOB9PVp91cd28s2LRDisPxnaUG6NQ0fmRHFD
    expires_at: 1407165161
    expires: true
  extra: !ruby/hash:OmniAuth::AuthHash
    raw_info: !ruby/hash:OmniAuth::AuthHash
      data: !ruby/hash:OmniAuth::AuthHash
        result: !ruby/hash:OmniAuth::AuthHash
          resultcode: '00'
          message: success
        response: !ruby/hash:OmniAuth::AuthHash
          email: foobar@naver.com
          nickname: "foobar"
          enc_id: 86744e27d4bfdb3cddb478293d295cf783ce9ed41f0ad7687bac26e97a1ed1b4
          profile_image: https://ssl.pstatic.net/static/pwe/address/nodata_33x33.gif
          age: 30-39
          birthday: 01-08
          gender: M
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-naver/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
