# GreekToEnglishSlugify

The greek to english slugify makes your string to greekslish slug like -> σπιτι για πωληση = spiti-gia-pwlisi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/greek_to_english_slugify`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add greek_to_english_slugify

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install greek_to_english_slugify

## Usage

In order to use it follow the steps in your model.rb

```
require "./lib/greek_to_english"

include GreekToEnlgish

before_save :slugify

def slugify
  self.slug = GreekToEnlgish::sluging(self.name.downcase).parameterize
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/greek_to_english_slugify.



