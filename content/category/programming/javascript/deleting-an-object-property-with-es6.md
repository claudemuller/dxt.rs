---
title: "Deleting an Object Property with ES6"
date: 2021-12-05T09:20:00+02:00
summary: "How to delete one or more object properties using ES6 syntax."
author: "lukefilewalker"
categories: ["programming", "javascript"]
tags: ["code", "es6", "javascript", "programming"]
cover:
    image: "object-delection.jpg"
    alt: "typing"
    caption: "Photo by cottonbro from Pexels"
    relative: true
#comments: true
---

Instead of using the tried and tested `delete` operator, you could show how evolved you are by employing [ES6](https://wikiless.org/wiki/ECMAScript?lang=en#6th_Edition_%E2%80%93_ECMAScript_2015) syntax.

Instead of using the `delete` operator:
```js
const model = {
  _id: '1234-1234-1234-1234',
  name: 'Joe',
  surname: 'Soap',
};
delete model._id;

/**
 * Results in:
 *
 * {
 *  name: 'Joe',
 *  surname: 'Soap',
 * }
 */
```
Use [ES6](https://wikiless.org/wiki/ECMAScript?lang=en#6th_Edition_%E2%80%93_ECMAScript_2015) syntax:
```js
const model = {
  _id: '1234-1234-1234-1234',
  name: 'Joe',
  surname: 'Soap',
};
const { _id, ...filteredModel } = model;

/**
 * Results in:
 *
 * {
 *  name: 'Joe',
 *  surname: 'Soap',
 * }
 */
```

JavaScript like a boss.
