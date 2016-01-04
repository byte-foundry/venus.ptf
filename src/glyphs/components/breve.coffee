exports.glyphs['breve'] =
	glyphName: "breve"
	characterName: "BREVE ACCENT"
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
					x: anchors[0].x - 130 * width
					y: anchors[0].y + 100 + ( 35 / 115 ) * thickness
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 85 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: anchors[0].y - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 115 )
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[1].x )
					y: contours[0].nodes[0].y
					dirIn: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 85 / 115 )
						angle: 180 + 'deg'
						distr: 1
					})
