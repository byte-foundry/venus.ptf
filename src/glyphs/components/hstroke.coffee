exports.glyphs['hstroke'] =
	glyphName: "hstroke"
	characterName: "STROKE"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 80 / 115 ) * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: anchors[1].x
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 80 / 115 ) * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
