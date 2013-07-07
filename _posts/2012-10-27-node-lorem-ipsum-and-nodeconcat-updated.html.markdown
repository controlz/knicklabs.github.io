---
layout: post
title: Lorem-Ipsum and Concat NodeJS Packages Updated
date: 2012-10-27
tags:
    - Node.js
    - JavaScript
    - NodeConcat
    - Lorem-Ipsum
---

I have published minor updates to the Lorem-Ipsum and Concat packages for NodeJS. You can get the updates through
NPM. An issue in Lorem-Ipsum that saw 'undefined' appear in program output has been closed. An issue in Concat in
which files could be included multiple times under certain circumstances has also been closed.

To install the latest version of Lorem-Ipsum (0.0.9):

```bash
npm install lorem-ipsum -g
```

To install the latest version of Concat (0.2.4):

```bash
npm install concat -g
```

Note that you can install both of these packages locally in your projects and require them as well. They are however,
most useful as command line utilities and so benefit from doing a global install.
