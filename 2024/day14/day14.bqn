Split←((⊢-˜+`×¬)∘=⊔⊢)
in←>•ParseFloat¨¨¨','⊸Split¨¨2⊸↓¨¨' '⊸Split¨•FLines"input"
size←101‿103
Step←{n𝕊p‿v: size|p+n×v}

p1←100 Step˘in
•Show ×´/⁼⊐(size÷2)⊸<˘(∧´˘(⌊size÷2)⊸≠˘p1)/p1

•Show n←⊑⊐⟜1 ⍷⊸≡¨{𝕩Step˘in}¨↕10000
•Out ∾1↓⥊(@+10)≍˘<˘⍉⊑⟜" #"¨+˝{1⊸+⌾(𝕩⊸⊑)size⥊0}˘n Step˘in
