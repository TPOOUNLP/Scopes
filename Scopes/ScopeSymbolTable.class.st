Class {
	#name : #ScopeSymbolTable,
	#superclass : #Object,
	#instVars : [
		'entries',
		'container',
		'lookupStrategy',
		'searchPath'
	],
	#category : #Scopes
}

{ #category : #'as yet unclassified' }
ScopeSymbolTable class >> lookupStrategy: aLookupStrategy [
	^ self new
		lookupStrategy: aLookupStrategy;
		yourself
]

{ #category : #accessing }
ScopeSymbolTable >> allContainers [
"not checking for circular references"
	| oc |
	oc := OrderedCollection new.
	container
		ifNotNil: [ oc
				add: container;
				addAll: container allContainers ].
	^ oc
]

{ #category : #accessing }
ScopeSymbolTable >> container [
	^ container
]

{ #category : #accessing }
ScopeSymbolTable >> container: anObject [
	container := anObject
]

{ #category : #accessing }
ScopeSymbolTable >> entries [
	^ entries
]

{ #category : #accessing }
ScopeSymbolTable >> entries: anObject [
	entries := anObject
]

{ #category : #initialization }
ScopeSymbolTable >> initialize [
	super initialize.
	entries := OrderedCollection new.
	^ self
]

{ #category : #testing }
ScopeSymbolTable >> isRoot [
	^ container isNil
]

{ #category : #accessing }
ScopeSymbolTable >> lookupStrategy [
	^ lookupStrategy
]

{ #category : #accessing }
ScopeSymbolTable >> lookupStrategy: anObject [
	lookupStrategy := anObject
]

{ #category : #accessing }
ScopeSymbolTable >> searchPath [
	^ searchPath
		ifNil: [ searchPath := lookupStrategy searchPathFor: self ]
]
