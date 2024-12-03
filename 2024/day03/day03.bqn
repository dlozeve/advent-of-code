in←•FChars"input"

Digits←'0'⊸≤∧≤⟜'9'

P1←{𝕊in:
  s←0‿0‿0∾"mul("⍷in  # start pattern
  d←Digits in  # digits
  c←','⊸=in  # separator comma
  e←')'⊸=in  # end pattern
  x←(2×s)+d+(3×c)+2×e  # id for each part of the pattern to match
  pats←⥊{∾⟨2,𝕩⥊1,3,𝕨⥊1,2⟩}⌜˜1+↕5  # patterns to look for, with numbers of up to 5 digits
  idxs←/¨⍷⟜x¨pats  # index for each pattern
  +´×´¨∾pats{𝕨⊸{•ParseFloat¨0‿1↓¨(','⊸=)⊸(+`⊸⊔)(¯2+≠𝕨)↑(1+𝕩)↓in}¨𝕩}¨idxs
}
•Show P1 in

Split←{(+`((≠𝕨)⥊0)∾𝕨⍷𝕩)⊔𝕩}
•Show +´∾P1¨¨1⊸↓¨"do()"⊸Split¨"don't()"Split "do()"∾in
