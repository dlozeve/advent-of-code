#!/usr/bin/env -S deno run --allow-read
const input = await Deno.readTextFile("input");
const parsedInput = input
  .split("\n")
  .map((s) => s.split("   "))
  .filter((l) => l.length == 2)
  .map((l) => [parseInt(l[0]), parseInt(l[1])]);
const left = parsedInput.map((l) => l[0]).sort();
const right = parsedInput.map((l) => l[1]).sort();
console.log(
  left.map((x, i) => Math.abs(x - right[i])).reduce((t, c) => t + c, 0),
);
const counts = Object.groupBy(right, (x) => x);
console.log(
  left.map((n) => n * (counts[n]?.length || 0)).reduce((t, c) => t + c, 0),
);
