in←>•FLines"input"
freqs←∾"0aA"+¨↕¨10‿26‿26
_antinodes←{f _r m:
  ns←∾{∾(≠⌜˜↕∘≠)⊸(/○⥊)F⌜˜/○⥊⟜(↕≢)𝕩=m}¨freqs
  ⍷(∧´0⊸≤∧<⟜(≠m)¨)¨⊸/ns
}
•Show ≠{⟨𝕩+𝕩-𝕨⟩}_antinodes in
•Show ≠{𝕩⊸+¨(𝕩-𝕨)⊸×¨↕≠in}_antinodes in
