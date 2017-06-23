exports.glyphs['Q_cap'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (36)
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					tensionOut: 0.95
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					tensionOut: 0.95
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 540 + 200 * width - (72),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[3].x + ( 5 / 115 ) * thickness + (22)
					y: contours[0].nodes[3].expandedTo[1].y + Math.min( 90, ( 90 / 115 ) * thickness ) + (16)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}, {x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y} )
						distr: 0.25
				0:
					x: contours[0].nodes[2].expandedTo[1].x - (5)
					y: ( 90 / 250 ) * descender
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}, {x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y} )
						distr: 0
