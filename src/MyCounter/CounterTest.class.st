Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

  |c|
  c := Counter new.
  c count: 58.
  self assert:  c count equals: 58
]

{ #category : #tests }
CounterTest >> testDecrement [
  |c|
  c := Counter new.
  c count: 58.
  c decrement; decrement.
  self assert:  c count equals: 56
]

{ #category : #tests }
CounterTest >> testIncrement [
  |c|
  c := Counter new.
  c count: 58.
  c increment; increment.
  self assert:  c count equals: 60
]
