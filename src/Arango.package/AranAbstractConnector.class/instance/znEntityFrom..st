query
znEntityFrom: anObject
	^ ZnEntity with: (NeoJSONWriter toString: anObject)