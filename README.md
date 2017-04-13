[![Gem Version](https://badge.fury.io/rb/indonesia.svg)](https://badge.fury.io/rb/indonesia)
[![Build Status](https://travis-ci.org/dimasjt/indonesia.svg?branch=master)](https://travis-ci.org/dimasjt/indonesia)
[![Code Climate](https://codeclimate.com/github/dimasjt/indonesia/badges/gpa.svg)](https://codeclimate.com/github/dimasjt/indonesia)


# Indonesia

Get Indonesia addresses provinces, regencies and districts. Data from [edwardsamuel/Wilayah-Administratif-Indonesia](https://github.com/edwardsamuel/Wilayah-Administratif-Indonesia)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indonesia', '~> 0.3.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indonesia

## Usage

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

* Get regencies by Province ID
```ruby
Indonesia.regencies(11)
```

* Get all districts
```ruby
Indonesia.districts

# result
=> [{:id=>1101010, :regency_id=>1101, :name=>"TEUPAH SELATAN"}, ...]
```

* Get all districts by Regency ID
```ruby
Indonesia.districts(1101)
```

### Rails select options

#### #options_for_select (:province, :regency, :district)
```ruby
# provinces
Indonesia.options_for_select(:province)

# result
=> [["ACEH", 11], ["SUMATERA UTARA", 12], ["SUMATERA BARAT", 13], ...]

# regencies
Indonesia.options_for_select(:regency)
# or
Indonesia.options_for_select(:regency, 11) # 11 is province_id

# result
=> [["KABUPATEN SIMEULUE", 1101], ["KABUPATEN ACEH SINGKIL", 1102], ...]

# districts
Indonesia.options_for_select(:district, 1101) # 1101 is regency_id

# result
=> [["TEUPAH SELATAN", 1101010], ["SIMEULUE TIMUR", 1101020], ...]
```
#### Generate for select options rails
* Province
```erb
<%= f.select :province_id, Indonesia.options_for_select(:province) %>
```

* Regency
```erb
<%= f.select :regency_id, Indonesia.options_for_select(:regency) %>
or
<%= f.select :regency_id, Indonesia.options_for_select(:regency, 11) %>
```

* District
```erb
<%= f.select :district_id, Indonesia.options_for_select(:district) %>
or
<%= f.select :district_id, Indonesia.options_for_select(:district, 1101) %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dimasjt/indonesia. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
