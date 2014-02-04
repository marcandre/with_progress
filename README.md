# with_progress [![Build Status](https://travis-ci.org/marcandre/with_progress.png?branch=master)](https://travis-ci.org/marcandre/with_progress) [![Gem Version](https://badge.fury.io/rb/with_progress.png)](http://badge.fury.io/rb/with_progress)

Brings the great [ruby-progressbar](https://github.com/jfelchner/ruby-progressbar) to `Enumerable`.

## Usage

This gem adds the method `Enumerable#with_progress`.

Calling `with_progress` displays a progress bar while the iteration takes place.

It uses the [ruby-progressbar](https://github.com/jfelchner/ruby-progressbar) gem and accepts the same options.

In Ruby 2.0+, most enumerables return a size, so `with_progress` uses that to deduce the `total`, there's no need to specify it:

	42.times.with_progress { do_something }
	# Will create the progress bar, provide the {total: 42} option
	# (in Ruby 2.0+) and call increment after each do_something

## Installation

Add this line to your application's Gemfile:

    gem 'with_progress'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install with_progress


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
