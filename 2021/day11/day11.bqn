in←'0'-˜>•FLines"input"

fs←⟨«,»,«˘,»˘,»∘(»˘),«∘(«˘),«∘(»˘),«˘∘»⟩
Flash←{𝕊flashed‿m:
  flashed+↩9<m
  ⟨flashed,(¬flashed)×m++´fs{𝕎𝕩}¨<9<m⟩
}
Step←{𝕊f‿m:
  Flash•_while_{∨´⥊9<1⊑𝕩} ⟨(≢f)⥊0,1+m⟩
}
•Show +´⥊+´⊑¨Step⍟(1+↕100)⟨(≢in)⥊0,in⟩

•Show ⊑/∧´∘⥊¨⊑¨Step⍟(↕300)⟨(≢in)⥊0,in⟩
