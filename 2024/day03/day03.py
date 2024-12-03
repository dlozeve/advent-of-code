import re


def p1(s):
    return sum(int(a) * int(b) for a, b in re.findall(r"mul\((\d+),(\d+)\)", s))


def p2(s):
    return sum(
        sum(p1(u) for u in re.split(r"do\(\)", t)[1:])
        for t in re.split(r"don't\(\)", "do()" + s)
    )


with open("input") as fd:
    inp = fd.read()

print(p1(inp))
print(p2(inp))
