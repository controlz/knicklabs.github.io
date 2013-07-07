---
layout: post
title: NodeConcat Updated - Now Works on Windows
date: 2012-06-12
tags:
    - Node.js
    - JavaScript
    - NodeConcat
---

[NodeConcat](https://github.com/knicklabs/NodeConcat) - a simple file concatenation tool I wrote - did not support Windows. Since I built this tool for myself and I don't use Windows, I wasn't upset. 

I received a pull request from [ricknpc](https://github.com/ricknpc) that added support for Windows by accounting for the differences in the Windows file system. That patch has been merged into master and the package has been updated on the [NPM Registry](http://search.npmjs.org/#/concat).

So, if you need to use NodeConcat on Windows, make sure you update to version 0.2.3. 