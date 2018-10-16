exports.glyphs['plus'] =
	unicode: '+'
	glyphName: 'plus'
	characterName: 'PLUS SIGN'
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
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 25
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 295 / 520 ) * xHeight - (35)
					typeOut: 'line'
					expand:
						width: ( 70 / defaultThickness ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + xHeight + 20
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
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: 0
					typeOut: 'line'
					expand:
						width: ( 75 / defaultThickness ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 75 / defaultThickness ) * thickness
						angle: 0
						distr: 0.5
