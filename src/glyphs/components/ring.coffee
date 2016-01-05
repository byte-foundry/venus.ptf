exports.glyphs['ring'] =
	glyphName: "ring"
	characterName: "RING ABOVE"
	ot:
		advanceWidth: 100
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
			closed: true
			nodes:
				0:
					x: anchors[0].x - ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * ( 57 / 63 ) / 2 - ( ( 57 / 115 ) * thickness * 0.25 )
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) / 2
					dirOut: 90 + 'deg'
					tensionOut: 1.05
					tensionIn: 1.1
					expand: Object({
						width: ( 57 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: anchors[0].x
					y: anchors[0].y + 160 + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					tensionOut: 1.05
					expand: Object({
						width: ( 53 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * ( 57 / 63 ) / 2 + ( ( 57 / 115 ) * thickness * 0.25 )
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					tensionOut: 1.1
					expand: Object({
						width: ( 57 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 53 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
