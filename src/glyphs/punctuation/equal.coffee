exports.glyphs['equal'] =
	unicode: '='
	glyphName: 'equal'
	characterName: 'EQUALS SIGN'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 25
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14)
					y: ( 400 / 520 ) * xHeight - (35)
					typeOut: 'line'
					expand:
						width: ( 70 / defaultThickness ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 200 * width + 315
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 70 / defaultThickness ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: ( 200 / 520 ) * xHeight - (35)
					typeOut: 'line'
					expand:
						width: ( 70 / defaultThickness ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[1].x
					y: contours[1].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 70 / defaultThickness ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
