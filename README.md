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
```ruby
	requested_date = Time.new(2015,9,8)
    CopticDate::get_coptic_year(requested_date) #1731
    CopticDate::get_coptic_month(requested_date) #13
    CopticDate::get_coptic_day(requested_date) #3
```

## Calculate Easter Date
```ruby
	CopticEaster::calculate_easter_date(2015) # 2015-04-12
```

## Calculate Variable Feast Dates
```ruby
	### Big Fast Date
	CopticVariableFeasts::big_fast_start_date(2014) # 2014,2,24

	### Jonah Fast Date
	CopticVariableFeasts::jonah_fast_start_date(2014) # 2014.2.10

	### Messengers Fast Date
	CopticVariableFeasts::messengers_fast_start_date(2014) # 2014.6.9

	### Messengers Feast Date
	CopticVariableFeasts::messengers_feast_date(2014) # 2014.7.12
	
	### Thomas Sunday
	CopticVariableFeasts::thomas_sunday(2014) # 2014.04.27
	
	### Ascension Feast Date
	CopticVariableFeasts::ascension_feast(2014) # 2014.05.29
	
	### Pentecost Feast Date
	CopticVariableFeasts::pentecost_feast(2014) # 2014.06.08
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

