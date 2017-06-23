exports.glyphs['_guilsinglright'] =
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
					x: anchors[0].x + (50)
					y: ( 470 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: anchors[0].x + 140 * width + (50)
					y: anchors[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
				2:
					x: contours[0].nodes[0].x
					y: ( 50 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
