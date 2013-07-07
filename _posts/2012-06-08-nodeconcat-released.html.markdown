---
layout: post
title: NodeConcat Released
date: 2012-06-08
tags:
    - Node.js
    - JavaScript
    - NodeConcat
---

Recently, I started playing with Node.js. As an exercise in learning, I ported the [RubyConcat](https://github.com/knicklabs/RubyConcat) Ruby script into a Node.js module, aptly name [NodeConcat](https://github.com/knicklabs/NodeConcat).

If you are unfamiliar with RubyConcat, which you probably are, it is a simple script that concatenates files listed in a manifest into a single monolithic file. It was a useful build tool for JavaScript or CSS. I had been using RubyConcat in a few projects, both at home and at work. 

I'm pleased with the end result of the effort to port RubyConcat to JavaScript as a Node.js module. It ended up being more than a straight port. I wrote the NodeConcat module to operate in two modes: (1) Asychronous and (2) Synchronous. I also cleaned up the command line interface and added references to the source files in the output, making NodeConcat easier to work with than its Ruby predecessor. 

NodeConcat is available through NPM. If you want to use it, you should install it locally so that you can use the module as a command line utility from any directory. 

```bash
npm install concat -g
```

Next, you will need to create a manifest file. The manifest file should list the paths to all the files you want to concatenate. These paths should be relative to the directory root. If you include directories in this list, all files inside the directory will be recursively included. Here's an example of the contents of a manifest file.

```text
lib
src/helpers.js
src
```

Finally, run NodeConcat from your command line. It requires two arguments: (1) path to manifest and (2) path to output. 

```bash
concat manifest.txt app.js
```

You should note that NodeConcat runs in asynchronous mode by default. That means that the output may not be in the same order as the input. If you want to garauntee that the output is the same order as the files specified in the manifest, you will need to pass the sync flag as a third argument. 

```bash
concat manifest.txt app.js --sync
```

More information on NodeConcat is available at <http://knicklabs.github.com/NodeConcat/>.