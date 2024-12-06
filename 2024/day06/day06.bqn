in←>•FLines"input"
map←'#'=in
i‿j←⊑¨/¨(∨´˘⋈∨˝)'^'=in

Move←{𝕊map‿i‿j‿v:
  p←⌽/i↑j⊏˘map
  newi←{0<≠p ? 1+⊑p ; ¯1}
  v↩1¨⌾((∾⟜j¨1+newi+↕i-newi)⊸⊑)v
  ⟨⌽∘⍉map,(≠map)-j+1,newi,⌽∘⍉v⟩
}
•Show +´⥊3⊑Move•_while_(0≤2⊸⊑)⟨map,i,j,(≢map)⥊0⟩

candidates←≢⟜i‿j¨⊸/⥊↕≢map
Stop←{𝕊map‿i‿j‿v: ((i‿j⊑v)∧(¬⟨i-1,j⟩⊑v)∨(¬⟨i+1,j⟩⊑v))∨j<0}
•Show +´{0≤2⊑Move•_while_(¬Stop)⟨1⌾(𝕩⊸⊑)map,i,j,(≢map)⥊0⟩}¨candidates
