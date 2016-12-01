exports.glyphs['ogonek'] =
	glyphName: "ogonek"
	characterName: "OGONEK"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			angle: parentAnchors[0].angle || ( Math.PI / 2 )
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
					dirOut: 210 + 'deg'
					tensionOut: 0.5
					expand: Object({
						width: thickness * ( 40 / 115 ) * contrast * contrastExtremity
						angle: anchors[0].angle
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 70
					y: ( contours[0].nodes[0].expandedTo[1].y + ( contours[0].nodes[2].y - contours[0].nodes[2].expand.width * ( 1 - contours[0].nodes[2].expand.distr )) ) / 2
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: 180 + 10 + 'deg'
						distr: 0.25
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 100 / 195 ),
						contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					)
					y: - 200
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 90 ) * thickness * contrast
						angle: 180 + 85 + 'deg'
						distr: 0.8
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + 195 - (43)
					y: contours[0].nodes[2].y + Math.max(
						( 35 / 90 ) * thickness * contrast - (11),
						35
					) - ( 1 - contours[0].nodes[2].expand.distr ) * contours[0].nodes[2].expand.width
					dirIn: - 130 + 'deg'
					expand: Object({
						width: ( 50 / 90 ) * thickness * contrast * contrastExtremity
						angle: - 80 + 'deg'
						distr: 0.75
					})
