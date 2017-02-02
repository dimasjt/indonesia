[![Gem Version](https://badge.fury.io/rb/indonesia.svg)](https://badge.fury.io/rb/indonesia)
[![Build Status](https://travis-ci.org/dimasjt/indonesia.svg?branch=master)](https://travis-ci.org/dimasjt/indonesia)
[![Code Climate](https://codeclimate.com/github/dimasjt/indonesia/badges/gpa.svg)](https://codeclimate.com/github/dimasjt/indonesia)


# Indonesia

Get Indonesia addresses provinces, regencies and districts. Data from [edwardsamuel/Wilayah-Administratif-Indonesia](https://github.com/edwardsamuel/Wilayah-Administratif-Indonesia)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indonesia'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indonesia

## Usage

* Get all provinces
```ruby
Indonesia.provinces
```

* Get all regencies
```ruby
Indonesia.regencies
```

* Get regencies by Province ID
```ruby
Indonesia.regencies(11)
```

* Get all districts
```ruby
Indonesia.districts
```

* Get all districts by Regency ID
```ruby
Indonesia.districts(1101)
```

### Rails select options element

```erb
<%= f.select :province_id, options_for_select(Indonesia.provinces.map { |province| [province[:name], province[:id]] }) %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dimasjt/indonesia. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

