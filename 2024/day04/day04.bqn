in←>•FLines"input"

a←⌽∘⍉⍟(↕4)in
UpperDiags←{(⌽1+↕≠𝕩)↑¨<˘⍉(↕∘≠⌽˘⊢)𝕩}
d←∾1⊸↓¨∾¨⌽⍟0‿1¨¨UpperDiags¨a
na←+´+´∘⥊¨"XMAS"⊸⍷¨a
nd←+´+´¨"XMAS"⊸⍷¨d
•Show na+nd

d1←2⊸⥊¨3⥊↕3
d2←⌽⊸(∾¨)↕3
•Show +´⥊∧˝∊⟜"MAS"‿"SAM"˘⊑⟜in¨d1‿d2+⟜<⌜↕¯2+≢in
