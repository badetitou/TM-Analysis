as yet unclassified
percentOfWellNamedClassMethodFrom: aMooseModel
	| testMethods numberOfWellNamed |
	testMethods := (((aMooseModel allAnnotationTypes select: [ :e | e name = 'Test' ]) at: 1) annotatedEntities collect: #belongsTo) asSet .
	numberOfWellNamed := ( testMethods select: [ :e | '*Test' match: e name ]) size.
	^ numberOfWellNamed / testMethods size * 100
	
		
	
	