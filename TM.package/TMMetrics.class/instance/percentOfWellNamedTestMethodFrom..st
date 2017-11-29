as yet unclassified
percentOfWellNamedTestMethodFrom: aMooseModel
	| testMethods numberOfWellNamed |
	testMethods := ((aMooseModel allAnnotationTypes select: [ :e | e name = 'Test' ]) at: 1) annotatedEntities.
	numberOfWellNamed := ( testMethods select: [ :e | 'test*' match: e name ]) size.
	^ numberOfWellNamed / testMethods size * 100
	
		
	
	