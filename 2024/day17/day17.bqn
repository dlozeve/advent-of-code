in←•FLines"input"
a‿b‿c←•ParseFloat¨12⊸↓¨3↑in
Split←((⊢-˜+`×¬)∘=⊔⊢)
p←•ParseFloat¨','Split 9↓¯1⊸⊑in
Combo←{𝕩⊑(↕4)∾𝕨}
Step←{
0‿n𝕊r‿a‿b‿c‿o: ⟨r+2,⌊a÷ 2⋆ a‿b‿c Combo n,b,c,o⟩;
1‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,⊑b 32•bit._xor ⟨n⟩,c,o⟩;
2‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,8 | a‿b‿c Combo n,c,o⟩;
3‿n𝕊r‿0‿b‿c‿o: ⟨r+2,a,b,c,o⟩;
3‿n𝕊r‿a‿b‿c‿o: ⟨n,a,b,c,o⟩;
4‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,⊑b 32•bit._xor ⟨c⟩,c,o⟩;
5‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,b,c,o∾8| a‿b‿c Combo n⟩;
6‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,⌊a÷ 2⋆ a‿b‿c Combo n,c,o⟩;
7‿n𝕊r‿a‿b‿c‿o: ⟨r+2,a,b,⌊a÷ 2⋆ a‿b‿c Combo n,o⟩
}
Run←{p𝕊a‿b‿c: {(2↑(⊑𝕩)↓p)Step 𝕩}•_while_{(⊑𝕩)<≠p}0‿a‿b‿c‿⟨⟩}
•Out 1↓∾(','∾•Fmt)¨¯1⊑p Run a‿b‿c
