# dnstwister

[![Build Status](https://travis-ci.com/ninoseki/dnstwister.svg?branch=master)](https://travis-ci.com/ninoseki/dnstwister)
[![Coverage Status](https://coveralls.io/repos/github/ninoseki/dnstwister/badge.svg?branch=master)](https://coveralls.io/github/ninoseki/dnstwister?branch=master)
[![CodeFactor](https://www.codefactor.io/repository/github/ninoseki/dnstwister/badge)](https://www.codefactor.io/repository/github/ninoseki/dnstwister)

[dnstwister](https://dnstwister.report/) API wrapper for Ruby.

## Installation

```bash
gem install dnstwister
```

## Usage

```ruby
require "dnstwister"

api = DNSTwister::API.new

domain = "example.com"

res = api.fuzz(domain)
fuzzy_domains = res.dig("fuzzy_domains") || []
p fuzzy_domains.map { |domain| domain.dig "domain" }
# => ["example.com", "examplea.com", "exampleb.com", "examplec.com", "exampled.com", ...]

api.safebrowsing domain
api.ip domain
api.parked domain
api.whois domain
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
