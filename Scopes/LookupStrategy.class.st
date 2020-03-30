Class {
	#name : #LookupStrategy,
	#superclass : #Object,
	#category : #Scopes
}

{ #category : #lookup }
LookupStrategy >> searchPathFor: scopeSymbolTable [
	"it returns a ordered collection of SymbolTables to perform lookup"

	^ self subclassResponsibility 
]
