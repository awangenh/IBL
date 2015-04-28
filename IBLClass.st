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

<body package="IBL" selector="named:color:">named: aNumber color: aColor
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLClass</class-id> <category>accessing</category>

<body package="IBL" selector="color">color

<body package="IBL" selector="color:">color: aColor

<body package="IBL" selector="correct">correct

<body package="IBL" selector="correct:">correct: aNumber

<body package="IBL" selector="incorrect">incorrect

<body package="IBL" selector="incorrect:">incorrect: aNumber

<body package="IBL" selector="instances">instances

<body package="IBL" selector="instances:">instances: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber

<body package="IBL" selector="n">n

<body package="IBL" selector="n:">n: aNumber

<body package="IBL" selector="name">name

<body package="IBL" selector="name:">name: aNumber

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber
</methods>

<methods>
<class-id>IBLClass</class-id> <category>obsolete</category>

<body package="IBL" selector="updateClassBoundaries">updateClassBoundaries

<body package="IBL" selector="updateClassBoundariesForDropping">updateClassBoundariesForDropping
</methods>

<methods>
<class-id>IBLClass</class-id> <category>calculations</category>

<body package="IBL" selector="incCorrect">incCorrect

<body package="IBL" selector="incIncorrect">incIncorrect

<body package="IBL" selector="incInstances">incInstances

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z
</methods>

</st-source>