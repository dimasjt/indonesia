[![Gem Version](https://badge.fury.io/rb/indonesia.svg)](https://badge.fury.io/rb/indonesia)
[![Build Status](https://travis-ci.org/dimasjt/indonesia.svg?branch=master)](https://travis-ci.org/dimasjt/indonesia)


# Indonesia

Get Indonesia addresses provinces, regencies and districts. Data from [edwardsamuel/Wilayah-Administratif-Indonesia](https://github.com/edwardsamuel/Wilayah-Administratif-Indonesia)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indonesia', '~> 0.5.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indonesia

## Usage

* [Rails helper](#rails-helper)
* [Rails migrations](#rails-migrations)


* Get all provinces
```ruby
Indonesia.provinces

# result
=> [{:id=>11, :name=>"ACEH"}, {:id=>12, :name=>"SUMATERA UTARA"}, ...]
```

* Get all regencies
```ruby
Indonesia.regencies

# result
=> [{:id=>1101, :province_id=>11, :name=>"KABUPATEN SIMEULUE"}, ...]
```

* Get all districts
```ruby
Indonesia.districts

# result
=> [{:id=>1101010, :regency_id=>1101, :name=>"TEUPAH SELATAN"}, ...]
```
* Get all villages
```ruby
Indonesia.villages

# result
=> [{:id=>1101010001, :district_id=>1101010, :name=>"LATIUNG"},...]
```

### Rails migrations

Generate models, migrations and save address data to database

Installation

```bash
$ rails generate indonesia:install

$ rake db:migrate
```
This will create models `Province`, `Regency` and `District`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dimasjt/indonesia. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
