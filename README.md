# CostaRicaAddressUtils

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/costa_rica_address_utils`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'costa_rica_address_utils'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install costa_rica_address_utils

## Usage

```ruby
require "costa_rica_address_utils"

some_address = { province: "San José", canton: "Central", district: "Pavas" }
# Check if address is valid
CostaRicaAddressUtils.address_valid?(**some_address) # => true

# Get address zip
address_info = CostaRicaAddressUtils.fetch_address_data(**some_address)
puts address_info[:zip] # => "10109"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## Release

To release a new version follow these steps:,
1. Update CHANGELOG.md with the new version changes
2. Update the version number in `version.rb` 
3. Execute bundle to update version on `Gemfile.lock` automatically
4. Commit the changes and change the branch to `main`
5. Run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

> Remember to execute `bundle exec rake release` on `main` branch
> `Gemfile.lock` update for version is done after running `bundle install` with the `version.rb` updated

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/costa_rica_address_utils. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/costa_rica_address_utils/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CostaRicaAddressUtils project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/costa_rica_address_utils/blob/master/CODE_OF_CONDUCT.md).
