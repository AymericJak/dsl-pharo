Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> D20 [

	| dh |
	dh := DieHandle new.
	self timesRepeat: [ dh addDie: (Die withFaces: 20) ].
	^ dh
]
