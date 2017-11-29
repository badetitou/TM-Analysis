as yet unclassified
computeNumberOfTestFrom: aMooseModel 
	^ ((aMooseModel allAnnotationTypes select: [ :e | e name = 'Test' ]) at: 1) annotatedEntities size