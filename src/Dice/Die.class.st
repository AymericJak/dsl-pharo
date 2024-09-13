"
Die class.
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice-Model',
	#package : 'Dice',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: anInteger [ 
	"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self new.
	instance faces: anInteger.
	^ instance
]

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

{ #category : 'printing' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ faces atRandom
]
