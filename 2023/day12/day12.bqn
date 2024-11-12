⟨Split⟩←•Import"../bqn-libs/strings.bqn"
rows‿sizes←<˘⍉>" "⊸Split¨•FLines"test"
sizes↩•ParseFloat¨¨","⊸Split¨sizes


rows
