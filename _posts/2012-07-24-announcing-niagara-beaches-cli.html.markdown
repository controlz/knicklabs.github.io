---
layout: post
title: Announcing Niagara Beaches CLI
date: 2012-07-24
tags:
    - Node.js
    - JavaScript
    - Niagara Beaches
---

As part of a larger project I am working on, I created a Node.js module to get beach reports for Niagara
Region beaches, including the somewhat famous, Lakeside Park.

The module can be used as a library in any node project. You can also install Niagara Beaches globally, by running
`npm install niagara-beaches --global`. This will allow you to run `niagara-beaches` from your command line
to receive an up-to-date list of beaches and their latest status updates.

Here's an example of how to use the module in a Node.js script.

```javascript
var beaches = require('niagara-beaches');

beaches.get(function(err, data) {
  if (err) {
    return console.log(err);
  }

  for (var i = 0, max = data.length; i < max; i++) {
    console.log(data[i]);
  }
});
```

Visit the [Official Niagara Beaches Web Page](http://knicklabs.github.com/niagara-beaches) for more information.
