Class {
	#name : #OperationEntry,
	#superclass : #SymbolTableEntry,
	#instVars : [
		'parameterSymbolTable'
	],
	#category : #Scopes
}

{ #category : #adding }
OperationEntry >> addParamenterNamed: aSymbol type: aType [
	parameterSymbolTable
		addEntry: (VariableEntry name: aSymbol type: aType)
]

{ #category : #initialization }
OperationEntry >> initialize [
	parameterSymbolTable := ScopeSymbolTable new.
	
]

{ #category : #lookup }
OperationEntry >> lookupForSymbol: aSymbol [
	^ parameterSymbolTable lookupForSymbol: aSymbol
]
