exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	anchors:
		0:
			minValue: minThickness
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: anchors[0].minValue
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x + anchors[0].minValue
					y: contours[0].nodes[0].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[0].y - anchors[0].minValue
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].y
					typeIn: 'line'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width:  Math.max( 8, ( 75 / defaultThickness ) * thickness )
						angle: Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].y - 60 - ( 60 / defaultThickness ) * thickness
					dirIn: 0
					typeOut: 'smooth'
					tensionIn: 1.2
					expand:
						width: Math.max( 8, ( 60 / defaultThickness ) * thickness )
						angle: Math.PI / 2
						distr: 0
