Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20

]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6

]

{ #category : 'tests' }
DieTest >> testRolling [
	| d |
	d:= Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
