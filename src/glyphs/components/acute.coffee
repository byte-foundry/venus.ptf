exports.glyphs['acute'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
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
					x: anchors[0].x + (5)
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + 65 + (15)
					y: anchors[0].y + 160
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 135 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
