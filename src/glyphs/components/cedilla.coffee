exports.glyphs['cedilla'] =
	glyphName: "cedilla"
	characterName: "CEDILLA"
	global: true
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
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: Math.max( 4 , thickness * ( 40 / 115 ) * contrast )
						angle: 0
						distr: 0.5
				1:
					x: anchors[0].x - 20 - ( 20 / 115 ) * thickness * width - (10)
					y: - 120 + (15)
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: Math.max( 4 , thickness * ( 40 / 115 ) * contrast )
						angle:( - 30 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y} )
					expand:
						width: Math.max( 4 , thickness * ( 40 / 115 ) * contrast )
						# angle: Math.PI / 2
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y} )
						distr: 0
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( ( contours[0].nodes[4].x - thickness * ( 65 / 115 ) * 0.75 ) - contours[0].nodes[1].expandedTo[1].x ) * 0.5
					y: - 105 + (15)
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: Math.max( 4 , thickness * ( 56 / 115 ) * contrast )
						angle:( 80 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 85 * width - (15)
					y: contours[0].nodes[5].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[5].expandedTo[0].y ) * 0.5
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: Math.max( 4 , thickness * ( 65 / 115 ) )
						angle: 0
						distr: 0.75
				5:
					x: contours[0].nodes[3].expandedTo[0].x + (0)
					y: - 200 - ( 50 / 115 ) * thickness
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: Math.max( 4 , thickness * ( 55 / 115 ) )
						angle:( - 87 ) / 180 * Math.PI
						distr: 1
				6:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[0].y - contours[0].nodes[5].expandedTo[0].y ) * 0.5
					dirIn: - 90 + Math.min( 20,( ( 20 / 115 ) * thickness ) ) / 180 * Math.PI
					expand:
						width: Math.max( 4 , thickness * ( 57 / 115 ) * contrast )
						angle:( 180 + 38 ) / 180 * Math.PI
						distr: 0.5
