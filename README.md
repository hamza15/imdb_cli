# ImdbCli

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/imdb_cli`. To experiment with that code, run `bin/console` for an interactive prompt.

IMDC_CLI uses Nokogiri to scrape the Top 15 Horro movies based on popularity. It allows the user to select a movie to find out more information about it like the cast, director, an IMDB review and even watch the trailer for a movie based on their selection!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'imdb_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install imdb_cli

## Usage

To start using this project after cloning/installing, enter the bin/ directory of the project's root folder and type:

    $ ./imdb_cli

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/imdb_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/imdb_cli/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ImdbCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hamza15/imdb_cli/blob/master/CODE_OF_CONDUCT.md).
