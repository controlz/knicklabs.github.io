---
layout: post
title: Preliminary Version of Lorem-Ipsum Module Released
date: 2012-06-18
tags:
    - Node.js
    - JavaScript
    - Lorem-Ipsum
---

I made a simple Node module tonight that generates passages of Lorem Ipsum, which is great placeholder text. This is a preliminary version so it does not have many options yet, but it is nonetheless useful.

### How to Use the Module

Install the module through npm.

```bash
npm install lorem-ipsum
```

Require the module in your script. It returns a function which you can call. When invoked, the function will return a string of lorem ipsum text.

```javascript
var g = require('lorem-ipsum')
  , s = g();
```

You can also pass options to the function. You can pass a count and specify if you want words or sentences.

```javascript
s = g({count: 5, units: 'words'});
```

### How to Use the Command Line Interface

Install the module globally through npm.

```bash
npm install lorem-ipsum -g
```

Running the command `lorem-ipsum` will output a paragraph of lorem ipsum text. You can also specify a count and whether you want words or sentences.

```bash
lorem-ipsum 5 --sentences
```

