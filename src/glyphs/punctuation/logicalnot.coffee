exports.glyphs['logicalnot'] =
	unicode: '¬'
	glyphName: 'logicalnot'
	characterName: 'NOT SIGN'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
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
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 262 / 750 ) * capHeight + (1)
					typeOut: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 200 * width + 100 + thickness * contrast
					y: ( 262 / 750 ) * capHeight + (1)
					typeIn: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: contours[0].nodes[0].expandedTo[0].y - 150
					typeOut: 'line'
					expand:
						width: ( 115 / defaultThickness ) * thickness * contrast
						angle: Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 115 / defaultThickness ) * thickness * contrast
						angle: Math.PI
						distr: 0
