in←•ParseFloat¨¨' '⊸((¬-˜⊢×·+`»⊸>)∘≠⊔⊢)¨•FLines"input"
Sorted←∧⊸≡∨∨⊸≡
Step←∧´∘(1⊸≤∧≤⟜3)(|1⊸(↓--⊸↓))
•Show +´(Sorted∧Step)¨in
Expand←{((∾↑⋈1⊸+⊸↓)⟜𝕩)¨(↕≠)𝕩}
•Show +´∨´¨(Sorted∧Step)¨¨Expand¨in
