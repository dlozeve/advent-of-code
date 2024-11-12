⟨Split⟩←•Import"../bqn-libs/strings.bqn"
≠bricks←⍋∘(2⊸⊑¨⌊˝¨)⊸⊏>¨•ParseFloat¨¨¨","⊸Split¨¨"~"⊸Split¨•FLines"test"

xmax‿ymax‿zmax←1+⌈˝∾´bricks
h←xmax‿ymax⥊0
segs←{(⊏𝕩)⊸+¨⥊↕1+-˜˝𝕩}¨2⊸↑˘¨bricks
zs←1+2⊸⊑¨(⌈˝-⌊˝)¨bricks
h{segs‿zs𝕊𝕩: zs⊸+⌾(segs⊸⊑)𝕩}´segs⋈¨zs


Covered←∧´∘(2⊸↑˘⊸(⊏⊸≤∧1⊸⊏⊸≥))
es←∾¯2⊸↑¨¨2⊸↓¨↑¨⥊/¨{Covered⟜𝕩¨bricks}¨↕xmax‿ymax
a←1˙¨⌾(es⊸⊑)(∾˜≠bricks)⥊0

Fall←{𝕊bricks:
  newz←{1+0⌈´𝕩/2⊸⊑¨⌈˝¨bricks}¨<˘⍉a
  {𝕩+newz-2⊸⊑¨⌊˝¨bricks}⌾(2⊸⊏˘¨)bricks
}
#fallenbricks←Fall⍟zmax bricks
fallenbricks←Fall{𝕊∘⊢⍟≢⟜𝔽𝕩} bricks
es2←{1=|-´2⊸⊑¨⟨⌈˝,⌊˝⟩{𝕎𝕩}¨𝕩⊏fallenbricks}¨⊸/es
b←1˙¨⌾(es2⊸⊑)(∾˜≠bricks)⥊0
+´0=+˝(1≥+˝b)/⍉b
