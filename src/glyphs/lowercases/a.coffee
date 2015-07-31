exports.glyphs['a'] =
	unicode: 'a'
	ot:
		advanceWidth: contours[0].nodes[5].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (29)
		spacingRight: 30 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 55
					y: xHeight - 130
					dirOut: 72 + 'deg'
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: - 18 + 'deg'
						distr: 0
					})
				1:
					x: 270
					y: xHeight + overshoot
					type: 'smooth'
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 360 + (86)
					y: ( 380 / 520 ) * xHeight - (32)
					dirIn: 90 + 'deg'
					tensionIn: 1.2
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 - 23 + 'deg'
						distr: 0.25
					})
				3:
					x: 475 - (29)
					y: ( 85 / 115 ) * thickness + 35
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: 0 + 'deg'
					dirIn: 180 + 'deg'
					tensionIn: 1.5
					expand: Object({
						width:
							Math.sqrt(
								Math.pow( contours[0].nodes[5].expand.width, 2 ) +
								Math.pow( contours[0].nodes[5].x - contours[0].nodes[3].x, 2 )
							)
						angle: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[5].expandedTo[0].point ) + Math.PI
						distr: 1
					})
				5:
					x: contours[0].nodes[4].x + ( 50 + ( 25 / 115 ) * thickness )
					y: 0
					dirIn: 180 + 'deg'
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( 1 / 115 ) * thickness
					y: 205
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 180 - 85 + 'deg'
						distr: 1
					})
				1:
					x: 195
					y:  - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					expand: Object({
						width: ( 87 / 115 ) * thickness * contrast
						angle: 66 + 'deg'
						distr: 0
					})
				2:
					x: 40 + (29)
					y: 135
					type: 'smooth'
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 2 + 'deg'
						distr: 0.25
					})
				3:
					x: 190 + (17)
					y: 300 - (19)
					type: 'smooth'
					dirOut: # 11 + 'deg'
						Utils.lineAngle( contours[1].nodes[3].expandedTo[0].point, contours[1].nodes[4].expandedTo[0].point ) - Math.PI / 10
					tensionOut: 1.1
					expand: Object({
						width: ( 102 / 115 ) * thickness * contrast
						angle: - 47 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[2].expandedTo[1].y * crossbar,
						contours[0].nodes[0].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[0].expandedTo[1].y ) / 2
					)
					dirIn: - 90 + 'deg'
					tensionIn: 1.4
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
