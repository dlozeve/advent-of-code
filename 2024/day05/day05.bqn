in←•FLines"input"
n←⊑/⟨⟩⊸≡¨in
Split←((⊢-˜+`×¬)∘=⊔⊢)
es←•ParseFloat¨>'|'⊸Split¨n↑in
ls←•ParseFloat¨¨','⊸Split¨(1+n)↓in

Kahn←{𝕊es:
  Step←{𝕊es‿s‿l:
    n←⊑s
    s↩1↓s
    l↩l∾n
    emask←n=⊏˘es
    s↩s∾{1=≠((1⊑˘es)=𝕩)/es}¨⊸/1⊏˘emask/es
    es↩(¬emask)/es
    es‿s‿l
  }
  ns←⍷⥊es
  s←(¬ns∊1⊏˘es)/ns
  2⊑Step•_while_{0≠≠1⊑𝕩} es‿s‿⟨⟩
}
sorted←Kahn¨{(∧´˘∊⟜𝕩˘es)/es}¨ls
Middle←(⌊≠÷2˙)⊸⊑
•Show +´Middle¨ /⟜sorted ls≡¨sorted
•Show +´Middle¨ /⟜sorted ls≢¨sorted
