exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 50 * spacing
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
					typeOut: 'line'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width:  Math.max( 8, ( 75 / 115 ) * thickness )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].y - 60 - ( 60 / 115 ) * thickness
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: Math.max( 8, ( 60 / 115 ) * thickness )
						angle: 90 + 'deg'
						distr: 0
					})
