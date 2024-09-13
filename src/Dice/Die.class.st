"
Die class.
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'initialization' }
Die >> faces [
	^ faces
]

{ #category : 'initialization' }
Die >> faces: anInteger [
	faces:= anInteger
]

{ #category : 'initialization' }
Die >> initialize [
	super initialize.
	faces := 6
]
