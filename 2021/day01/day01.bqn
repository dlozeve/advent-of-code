a←•BQN¨•Flines"input"
# Fn←{+´(¯1⊸↓<1⊸↓)+˝˘ 𝕨↕𝕩}
Fn←{+´0>𝕨↓⌽𝕩-𝕨⌽𝕩}
•Show 1 Fn a  # part 1
•Show 3 Fn a  # part 2
