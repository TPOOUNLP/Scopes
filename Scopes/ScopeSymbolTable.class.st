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

{ #category : #adding }
ScopeSymbolTable >> addEntry: anEntry [
	entries addLast: anEntry
]

{ #category : #deprecated }
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

{ #category : #lookup }
ScopeSymbolTable >> lookupForSymbol: aSymbol [
	^ entries
		detect: [ :entry | (entry lookupForSymbol: aSymbol) notNil ]
		ifNone: [ self lookupInContainerForSymbol: aSymbol ]
]

{ #category : #private }
ScopeSymbolTable >> lookupInContainerForSymbol: aSymbol [
	^ container lookupForSymbol: aSymbol
]

{ #category : #deprecated }
ScopeSymbolTable >> lookupStrategy [
	^ lookupStrategy
]

{ #category : #deprecated }
ScopeSymbolTable >> lookupStrategy: anObject [
	lookupStrategy := anObject
]

{ #category : #deprecated }
ScopeSymbolTable >> searchPath [
	^ searchPath
		ifNil: [ searchPath := lookupStrategy searchPathFor: self ]
]
