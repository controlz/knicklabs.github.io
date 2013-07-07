---
layout: post
title: Rake Tasks for Jekyll Sites
date: 2013-07-07
tags:
    - Ruby
    - Jekyll
---

A powerful feature of building static sites with Jekyll is that you can create Rake tasks to handle common development
tasks. Rake is a software task management tool for Ruby and its easy to use. 

To get started using Rake with Jekyll, create a file named `Rakefile` in the root of your project directory. Note that
there is no extension for this file. Inside the file, you can define a number of tasks. You define tasks by 
passing a block of code to be executed. For example:

```ruby
task :name do
  # your task code here
end
```

When working on this blog, I run the Jekyll development server and Compass. Rather than run these two processes in two 
separate terminals, I use a Rake task to handle it.

```ruby
task :server do
  server  = Process.spawn("jekyll serve --watch")
  compass = Process.spawn("compass watch")
  
  trap("INT") do
    [server, compass].each { |pid| Process.kill(9, pid) rescue Errno::ESRCH }
    exit 0
  end
  
  [server, compass].each { |pid| Process.wait(pid) }
end
```

Now when I work on my blog, I spin up my terminal and run `rake server`. This create a Jekyll development server
that watches for changes to my site files and a Compass process that watches for changes to my Sass files. The output 
from both processes is piped to the same terminal window. 
