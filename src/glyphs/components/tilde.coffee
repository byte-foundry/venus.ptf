exports.glyphs['tilde'] =
	glyphName: "asciitilde"
	characterName: "TILDE"
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
					x: anchors[0].x - 80 * width
					y: anchors[0].y
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 85 / 115 )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[0].x ) *
						Math.min(
							0.5,
							( 13 / ( (80/115) * thickness ) )
						)
					y: contours[1].nodes[1].y + overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 90 / 115 )
						angle: 180 - 85 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x - ( contours[1].nodes[1].expandedTo[1].x - anchors[0].x ) *
						Math.min(
							0.5,
							( 13 / ( (80/115) * thickness ) )
						)
					y: anchors[0].y - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 90 / 115 )
						angle: 95 + 'deg'
						distr: 0
					})
				1:
					x: anchors[0].x + 80 * width
					y: Math.min( anchors[0].y + 150 , anchors[0].y + 50 + ( 100 / 115 ) * thickness )
					dirIn: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 85 / 115 )
						angle: 180 + 'deg'
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					# tensionOut: Math.min( 1, Math.max( 1.2, (1.4/115) * thickness ))
					tensionOut: Math.max( 1.1, (1.4/115) * thickness )
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					tensionIn: Math.max( 0.9, (0.4/115) * thickness )
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					# tensionOut: Math.min( 1, Math.max( 1.2, (1.4/115) * thickness ))
					tensionOut: Math.max( 1.1, (1.4/115) * thickness )
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					tensionIn: Math.max( 0.9, (0.4/115) * thickness )
