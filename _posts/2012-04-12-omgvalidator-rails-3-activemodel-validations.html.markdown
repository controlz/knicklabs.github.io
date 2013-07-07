---
layout: post
title: "OmgValidator: Rails 3 ActiveModel Validations"
date: 2012-04-12
tags:
    - Rails
    - Ruby
    - OmgValidator
---

I used to turn to CodeIgniter for quickly building CRUD-based web apps. These days I usually do that in Rails. I haven't worked with CodeIgniter in a couple of years. I do miss it a bit though. Mostly, I miss the data validations. 

Almost every web app needs email address, phone number, and other common format-based data validations. The folks behind code igniter were thoughtful enough to bake these right into their framework. 

When I made the transition to Rails, I was thrilled with ActiveModel validations. I especially liked that they were handled at the model level instead of in form helpers like most other frameworks. However, I was disappointed that ActiveModel validations did not include many of the common validations included in CodeIgniter. Every time I created a Rails project, I had to figure out how I was going to validate common data formats, like email addresses and postal codes.

A co-worker and I created a Ruby Gem that solves this issue. It brings many of the great format-based validations from CodeIgniter, as well as other useful validations, to Rails. It duck-types ActiveModel::Validations to so that classes that inherit from ActiveModel can validate the following data formats:

* alpha-dash characters
* alpha-numeric characters
* alpha characters
* dates
* email addresses
* ip addresses
* phone numbers
* postal codes
* zip codes
* strong passwords
* website addresses

Our boss agreed to let us open source the project. We put the source code up on [GitHub](https://github.com/llwebsol/omg_validator) and published the Gem on [RubyGems](http://rubygems.org/gems/omg_validator).

Your models in Rails can benefit from the validations by simply include gem omg_validator in your Gemfile. And of course, run bundle install. 

```ruby
gem 'omg_validator', '~>0.7'
```

Using OmgValidator is as simple as installing it. Here's an example model using the Mongoid ORM that has a postal code field which we expect to be a valid postal code or zip code format.

```ruby
class Address
  include Mongoid::Document

  field :postal_code, type: String

  attr_accessor :postal_code

  validates :postal_code, postal_or_zip_code: true
end
```

Download the source on [GitHub](https://github.com/llwebsol/omg_validator)
Check out the Gem at [RubyGems](http://rubygems.org/gems/omg_validator)