exports.glyphs['six'] =
	unicode: '6'
	glyphName: 'six'
	characterName: 'DIGIT SIX'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[3].expandedTo[1].handleOut, contours[0].nodes[2].expandedTo[1], contours[0].nodes[2].expandedTo[1].handleIn, ( 50 - ( 50 / 115 ) * thickness ) * contrast * contrastExtremity, true, 10 )
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[3].expandedTo[1].handleOut, contours[0].nodes[2].expandedTo[1], contours[0].nodes[2].expandedTo[1].handleIn, ( ( 100 / 115 ) * thickness + 50 - ( 50 / 115 ) * thickness ) * contrast * contrastExtremity, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 300 - (25),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( 119 / 115 ) * thickness * opticThickness * contrast + 10
					)
					y: ( 635 / 750 ) * capHeight - (16)
					dirOut: 105 + 15 * contrast + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 119 / 115 ) * thickness * opticThickness * contrast
						angle: - 147 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (34)
					y: ( 375 / 750 ) * capHeight + (0)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					tensionOut: 1.1
					expand:
						width: ( 142 / 115 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.53
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
				4:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 325 - (35),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 245 / 750 ) * capHeight + (0)
					dirIn: 90 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
				5:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.57
					y: ( 500 / 750 ) * capHeight - (28)
					dirIn: 0 + 'deg'
					expand:
						width: ( 113 / 115 ) * thickness * opticThickness * contrast
						angle: - 103 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[5].y
					dirOut: contours[0].nodes[5].dirIn
					expand:
						width: contours[0].nodes[5].expand.width
						angle: contours[0].nodes[5].expand.angle
						distr: contours[0].nodes[5].expand.distr
				1:
					expandedTo:
						[
							{
								x: anchors[0].junctionTop.x
								y: anchors[0].junctionTop.y
								dirIn: Math.max(65, ( 65 / 115 ) * thickness ) + 'deg'
								typeOut: 'smooth'
							}
							{
								x: anchors[0].junctionBottom.x
								y: anchors[0].junctionBottom.y
								dirIn: Math.min(100, Math.max(65, ( 90 / 115 ) * thickness )) + 'deg'
								typeOut: 'smooth'
							}
						]
				2:
					expandedTo:
						[
							{
								x: contours[1].nodes[1].expandedTo[0].x - thickness / 4
								y: contours[1].nodes[1].expandedTo[0].y
							}
							{
								x: contours[1].nodes[1].expandedTo[1].x - thickness / 4
								y: contours[1].nodes[1].expandedTo[1].y
							}
						]
