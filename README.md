# CopticDate

CopticDate is used to convert Gregorian date to Coptic Date. It is also used to calculate Easter date for Orthodox.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coptic_date'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coptic_date

## Date Converter
```
	requested_date = Time.new(2015,9,8)
    CopticDate::get_coptic_year(requested_date) #1731
    CopticDate::get_coptic_month(requested_date) #13
    CopticDate::get_coptic_day(requested_date) #3
```

## Calculate Easter Date
```
	CopticEaster::calculate_easter_date(2015) # 2015-04-12
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

