# ci-notify

With the advent of Jenkinsfile and the pipeline, I ran into the problem that
IRC-notifications were not supported (yet). Since I wanted to migrate to the
new way, I created a little script to provide me those notifications.

Before long, I wanted to share this between projects. You won't guess what
happened next...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ci-notify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ci-notify

## Usage

```bash
IRC_CHANNEL="foo" DRY_RUN=true ci-notify SUCCESS
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can
also run `bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome.

