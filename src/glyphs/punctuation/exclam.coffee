exports.glyphs['exclam'] =
	unicode: '!'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[0].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 45 * spacing + (90)
		spacingRight: 45 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 440 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: minThickness + 170 - ( 85 / 115 ) * thickness
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 35 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + 5
					y: minThickness
