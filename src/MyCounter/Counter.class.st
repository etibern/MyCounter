Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger
]

{ #category : #accessing }
Counter >> count [ 
  ^count
]

{ #category : #accessing }
Counter >> count: anInterger [

  count := anInterger
]

{ #category : #accessing }
Counter >> decrement [

  count := count - 1
]

{ #category : #accessing }
Counter >> decrement2 [

  count := count - 2
]

{ #category : #accessing }
Counter >> increment [

  count := count + 1
]

{ #category : #accessing }
Counter >> increment2 [

  count := count + 2
]

{ #category : #operation }
Counter >> increment5 [
	count := count + 5
]

{ #category : #accessing }
Counter >> initialize [ 
  
  super initialize.
  count := 0
]

{ #category : #accessing }
Counter >> printOn: aStream [
  
  super printOn: aStream.
  aStream nextPutAll: ' with value : ' , count printString.
  aStream cr
]
