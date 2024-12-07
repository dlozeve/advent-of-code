Split←((⊢-˜+`×¬)∘=⊔⊢)
in←⊑⌾⊑˘•ParseFloat¨¨0‿1⊸(↓¨)˘>' '⊸Split¨¨':'⊸Split¨•FLines"input"
Check1←{
  𝕨𝕊⟨n⟩: 𝕨=n;
  0=(⊑𝕩)|𝕨 ? ((𝕨÷⊑𝕩)𝕊1↓𝕩)∨(𝕨-⊑𝕩)𝕊1↓𝕩 ; (𝕨-⊑𝕩)𝕊1↓𝕩
}
•Show +´⊑˘/⟜in Check1⟜⌽´˘in

Unconcat←{(𝕨-𝕩)÷10⋆≠•Repr𝕩}
Suffix←{0=(10⋆≠•Repr𝕩)|𝕨-𝕩}
Check2←{
  𝕨𝕊⟨n⟩: 𝕨=n;
  𝕨Suffix⊑𝕩 ? ((𝕨Unconcat⊑𝕩)𝕊1↓𝕩)∨((𝕨÷⊑𝕩)𝕊1↓𝕩)∨(𝕨-⊑𝕩)𝕊1↓𝕩 ;
  0=(⊑𝕩)|𝕨 ? ((𝕨÷⊑𝕩)𝕊1↓𝕩)∨(𝕨-⊑𝕩)𝕊1↓𝕩 ; (𝕨-⊑𝕩)𝕊1↓𝕩
}
•Show +´⊑˘/⟜in Check2⟜⌽´˘in
