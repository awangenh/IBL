<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.0 of 26 de setembro de 2014 on 28 de abril de 2015 at 14h31min02s</time-stamp>


<class>
<name>IBLClass</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name color correct incorrect instances n lowerAcceptanceBoundary upperAcceptanceBoundary lowerDroppingBoundary upperDroppingBoundary </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>IBL</category>
<attributes>
<package>IBL</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLClass class</class-id> <category>instance creation</category>

<body package="IBL" selector="named:color:">named: aNumber color: aColor	| theInstance |	theInstance := self new.	theInstance correct: 0.	theInstance incorrect: 0.	theInstance instances: 0.		theInstance name: aNumber.	theInstance color: aColor.	^theInstance</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLClass</class-id> <category>accessing</category>

<body package="IBL" selector="color">color	^color</body>

<body package="IBL" selector="color:">color: aColor	color := aColor</body>

<body package="IBL" selector="correct">correct	^correct</body>

<body package="IBL" selector="correct:">correct: aNumber	correct := aNumber</body>

<body package="IBL" selector="incorrect">incorrect	^incorrect</body>

<body package="IBL" selector="incorrect:">incorrect: aNumber	incorrect := aNumber</body>

<body package="IBL" selector="instances">instances	^instances</body>

<body package="IBL" selector="instances:">instances: aNumber	instances := aNumber</body>

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary	^lowerAcceptanceBoundary</body>

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber	lowerAcceptanceBoundary := aNumber</body>

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary	^lowerDroppingBoundary</body>

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber	lowerDroppingBoundary := aNumber</body>

<body package="IBL" selector="n">n	^n</body>

<body package="IBL" selector="n:">n: aNumber	n := aNumber</body>

<body package="IBL" selector="name">name	^name</body>

<body package="IBL" selector="name:">name: aNumber	name := aNumber</body>

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary	^upperAcceptanceBoundary</body>

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber	upperAcceptanceBoundary := aNumber</body>

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary	^upperDroppingBoundary</body>

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber	upperDroppingBoundary := aNumber</body>
</methods>

<methods>
<class-id>IBLClass</class-id> <category>obsolete</category>

<body package="IBL" selector="updateClassBoundaries">updateClassBoundaries	"Obsolete!"	self halt.	"A high (z represents 90%) confidence is used for acceptance"	self lowerBoundaryZ: 0.9.	self upperBoundaryZ: 0.9.</body>

<body package="IBL" selector="updateClassBoundariesForDropping">updateClassBoundariesForDropping	"Obsolete!"	self halt.	"A lower confidence test (z represents 75%) represents confidence level for dropping"	self lowerBoundaryZ: 0.75.	self upperBoundaryZ: 0.75.</body>
</methods>

<methods>
<class-id>IBLClass</class-id> <category>calculations</category>

<body package="IBL" selector="incCorrect">incCorrect	correct isNil ifTrue: [ correct := 0].	correct := correct + 1.</body>

<body package="IBL" selector="incIncorrect">incIncorrect	incorrect isNil ifTrue: [ incorrect := 0].	incorrect := incorrect + 1.</body>

<body package="IBL" selector="incInstances">incInstances	instances isNil ifTrue: [ instances := 0].	instances := instances + 1.</body>

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z	| lowerBoundary p z2 |	"This method calculates the Lower Boundary of the Frequency Interval (FI) of this particular class of patterns,	 using the formula given in: Aha, David. Tolerating noisy, irrelevant and novel attributes in instance-	 based learning algorithms. Int. J. Man-Machine Studies (1992) 36, 267-287. at page 276"	"In order to avoid division by 0 when beginning the algorithm, teste here if n is zero and return a huge value."	(n = 0) ifTrue: [ ^99.0 ].	"n is the number of previously processed training instances"	"instances is the number of presented (or learned?) patterns that belong to this class"	"p for FI is defined in Aha (1992) as the RELATIVE FREQUENCY of his particular class"	p := instances / n.	"calculate z-square in advance"	z2 := z * z.	"LOWER boundary:	 p + ( z2 / (2 * n)) &gt;&gt;MINUS&lt;&lt;&lt; z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)"	lowerBoundary := p + ( z2 / (2 * n)) - (z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)).	lowerBoundary := lowerBoundary / (1 + (z2 / n)).	^lowerBoundary</body>

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z	| upperBoundary p z2 |	"This method calculates the Upper Boundary of the Frequency Interval (FI) of this particular class of patterns,	 using the formula given in: Aha, David. Tolerating noisy, irrelevant and novel attributes in instance-	 based learning algorithms. Int. J. Man-Machine Studies (1992) 36, 267-287. at page 276"	"In order to avoid division by 0 when beginning the algorithm, teste here if n is zero and return a huge value."	(n = 0) ifTrue: [ ^99.0 ].	"n is the number of previously processed training instances"	"instances is the number of presented (or learned?) patterns that belong to this class"	"p for FI is defined in Aha (1992) as the RELATIVE FREQUENCY of his particular class"	p := instances / n.	"calculate z-square in advance"	z2 := z * z.	"UPPER boundary:	 p + ( z2 / (2 * n)) &gt;&gt;PLUS&lt;&lt;&lt; z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)"	upperBoundary := p + ( z2 / (2 * n)) + (z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)).	upperBoundary := upperBoundary / (1 + (z2 / n)).	^upperBoundary</body>
</methods>

</st-source>
