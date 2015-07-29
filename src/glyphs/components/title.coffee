exports.glyphs['title'] =
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
					x: anchors[0].x
					y:
						Math.min(
							anchors[0].y,
							ascenderHeight - 25 # Set a min value to display a legible title in thin weights
						)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.max( thickness, 25 ) # Set a min value to display a legible title in thin weights
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width
						angle: 0 + 'deg'
						distr: 0.5
					})
