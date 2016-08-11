exports.glyphs['perthousand'] =
	unicode: '‰'
	glyphName: 'perthousand'
	characterName: 'PER MILLE SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50 + (300 * 0.6) / 2 * width + 20
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (300 * 0.6) / 2 * width + 20
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 200 * width + 180
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'smallzero'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( 20 / 90 ) * thickness
					y: contours[0].nodes[1].y + overshoot
					height: 300
					revert: true
		1:
			base: 'smallzero'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 20 / 90 ) * thickness
					y: contours[0].nodes[0].y - overshoot
					height: 300
		2:
			base: 'smallzero'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 20 / 90 ) * thickness + (300 * 0.6) * width + 20 + ( 65 / 115 ) * thickness + 20 * width
					y: contours[0].nodes[0].y - overshoot
					height: 300
