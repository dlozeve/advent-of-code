in←>•FLines"input"
map←'#'=in
i‿j←⊑/○⥊⟜(↕≢)'^'=in

Move←{𝕊map‿i‿j‿v‿k:
  p←⌽/i↑j⊏˘map
  newi←{0<≠p ? 1+⊑p ; ¯1}
  v↩1¨⌾((∾⟜j¨1+newi+↕i-newi)⊸⊑)v
  ⟨⌽∘⍉map,(≠map)-j+1,newi,⌽∘⍉v,k+1⟩
}
≠·‿·‿·‿v‿k←Move•_while_(0≤2⊸⊑)⟨map,i,j,(≢map)⥊0,0⟩
•Show +´⥊v

cs←>/○⥊⟜(↕≢)⌽∘⍉⁼⍟k v
Stop←{𝕊map‿i‿j‿v‿k: ((i‿j⊑v)∧(¬⟨i-1,j⟩⊑v)∨(¬⟨i+1,j⟩⊑v))∨j<0}
•Show +´{0≤2⊑Move•_while_(¬Stop)⟨1⌾(𝕩⊸⊑)map,i,j,(≢map)⥊0,0⟩}˘cs
