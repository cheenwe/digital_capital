# DigitalCapital

[![Build Status](https://travis-ci.org/cheenwe/digital_capital.svg?branch=master)](https://travis-ci.org/cheenwe/digital_capital)

货币大写金额转换/人民币大写转换 （将阿拉伯数字转换成中文大写、人民币大写转换）

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'digital_capital'
```

And then execute:

		$ bundle

Or install it yourself as:

		$ gem install digital_capital

## Usage

>DigitalCapital.cb(199499499.922) #  => "壹亿玖仟玖佰肆拾玖万玖仟肆佰玖拾玖元玖角贰分贰厘"

> DigitalCapital.cb(1992) #=> "壹仟玖佰玖拾贰元整"

> DigitalCapital.cb(-119.92) #=> "欠壹佰壹拾玖元玖角贰分"


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cheenwe/digital_capital. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DigitalCapital project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/cheenwe/digital_capital/blob/master/CODE_OF_CONDUCT.md).
