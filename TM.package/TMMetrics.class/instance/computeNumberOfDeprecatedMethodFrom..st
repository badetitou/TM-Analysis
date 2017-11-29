as yet unclassified
computeNumberOfDeprecatedMethodFrom: aMooseModel 
	^ ((aMooseModel allAnnotationTypes select: [ :e | e name = 'Deprecated' ]) at: 1) annotatedEntities size