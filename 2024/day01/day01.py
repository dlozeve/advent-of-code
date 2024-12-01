with open("input") as fd:
    input = ([int(x) for x in l.split()] for l in fd.readlines())
left, right = map(sorted, zip(*input))
print(sum(abs(l - r) for l, r in zip(left, right)))
print(sum(sum(l for x in right if x == l) for l in left))
