⟨lf,Split⟩←•Import"../bqn-libs/strings.bqn"
in←>•ParseFloat¨¨¨2⊸↓¨¨¨", "⊸Split¨¨1⊸⊑¨¨": "⊸Split¨¨lf⊸Split¨(lf∾lf)Split ¯1↓•FChars"input"

Solve←{offset𝕊⟨xa‿ya,xb‿yb,xp‿yp⟩:
  xp‿yp+↩offset
  na‿nb←{
    # A and B are collinear, we should find the optimal solution,
    # but I didn't need it for my input
    𝕊0: 0‿0;
    # General case
    nb←((xp×ya)-yp×xa)÷𝕩
    na←(xp-nb×xb)÷xa
    # Check that solution is integer
    {∧´⌊⊸=𝕩 ? 𝕩 ; 0‿0}na‿nb
  }(xb×ya)-yb×xa
}

•Show +´+˝3‿1⊸×˘0⊸Solve˘in
•Show +´+˝3‿1⊸×˘10000000000000⊸Solve˘in

