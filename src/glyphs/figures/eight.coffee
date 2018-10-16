exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (36)
					y: ( 205 / 750 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.15
					expand:
						width: ( 145 / defaultThickness ) * thickness * opticThickness
						angle:( 4 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: ( 400 / 750 ) * capHeight
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.15
					expand:
						width: ( 80 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 320 - (37),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / defaultThickness ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.15
					typeIn: 'smooth'
					expand:
						width: ( 145 / defaultThickness ) * thickness * opticThickness
						angle:( 175 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					tensionOut: 1.15
					typeIn: 'smooth'
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + 30 + (31)
					y: ( 565 / 750 ) * capHeight - (3)
					dirOut: Math.PI / 2
					tensionOut: 1.1
					typeIn: 'smooth'
					expand:
						width: ( 125 / defaultThickness ) * thickness * opticThickness
						angle:( - 5 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.1
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 200 * width + 260 - (31),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * ( 125 / defaultThickness ) * thickness * opticThickness + 10
					)
					y: contours[1].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.15
					typeIn: 'smooth'
					expand:
						width: ( 125 / defaultThickness ) * thickness * opticThickness
						angle:( 180 + 5 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Math.PI
					tensionOut: 1.15
					typeIn: 'smooth'
					expand:
						width: ( 80 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
