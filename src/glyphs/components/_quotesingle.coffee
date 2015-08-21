exports.glyphs['_quotesingle'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: minThickness - ( 10 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - minThickness + (5)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: minThickness - ( 10 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - minThickness + (15)
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 55 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
