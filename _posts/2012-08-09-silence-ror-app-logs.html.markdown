---
layout: post
title: Silence ROR App Logs
date: 2012-08-09
tags:
    - Rails
    - Ruby
    - Asset Pipeline
---

I think the asset pipeline in Ruby on Rails is great. I enjoy being able to create a bunch of tiny stylesheets and javascripts and having Rails put them back together into monolithic documents for me. It even minifies the assets in production. The asset pipeline offers a lot for free. 

What I don't like about the asset pipeline is how noisy it is. It logs every single asset request in the app log. I usually wind up with several pages of console output, most of which is full of notices of GET requests for assets. All of this data gets in the way of the information. There is very good information in the app logs, such as passed parameters and executed queries -- that's the stuff I want to see. 

Fortunately, there is a very easy fix for this problem. There is a Ruby Gem called Quiet Assets that supresses most of the log output from the asset pipeline. Just add 

```
gem 'quiet_assets', group: :development
```

to your gemfile and then run `bundle install`.

After installing Quiet Assets and restarting your server, you'll probably be a happier Ruby on Rails coder.

### The Problem with Webrick

All the noise from the asset pipeline is gone now that we have installed Quiet Assets. However, you might notice another problem if you are using Webrick and Ruby 1.9.3. You may have a series of warnings in your app log about unknown content-length of the response body. This is an issue with Webrick and it is solved easy enough if you are willing to use another development server.

Just add 

```
gem thin
```

to your gemfile and then run `bundle install`.

Now your rails app will run on the Thin web server and your app logs will be clean.