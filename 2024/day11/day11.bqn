Split←((⊢-˜+`×¬)∘=⊔⊢)
in←•ParseFloat¨' 'Split ¯1↓•FChars"input"

h←⟨⟩•HashMap⟨⟩
NumberOfDigits←{⌊1+10⋆⁼𝕩}
F←{
  𝕊0: ⟨1⟩;
  n←NumberOfDigits 𝕩
  (1=2|n)⊑⟨⟨⌊𝕩÷10⋆n÷2,(10⋆n÷2)|𝕩⟩,⟨2024×𝕩⟩⟩
}
G←{
  0𝕊n: 1;
  d𝕊n: {𝕊¯1: r←+´(d-1)⊸G¨F n ⋄ d‿n h.Set r ⋄ r ; 𝕩}¯1 h.Get d‿n
}
•Show +´25⊸G¨in
•Show +´75⊸G¨in
