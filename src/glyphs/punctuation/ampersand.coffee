# TODO: width + thickness
exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 25
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 40 + 25 * width - (10)
					y: 2 + (0)
					dirOut: - 158 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 98 / 115 ) * thickness * contrast
						angle: 99 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[11].expandedTo[1].x + 20
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.5
					expand: Object({
						width: ( 105 / 115 ) * thickness * contrast
						angle: 85 + 'deg'
						distr: 0
					})
				2:
					x: 386 + (23)
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: ( 133 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					type: 'smooth'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				3:
					x: 192 + (23)
					x: contours[0].nodes[4].x + ( contours[0].nodes[10].expandedTo[1].x - contours[0].nodes[4].x ) * 0.5
					# x: contours[0].nodes[10].expandedTo[1].x
					y: ( 355 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					type: 'smooth'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: 35 + 'deg'
						distr: 0.25
					})
				4:
					x: 127 + (27)
					x: contours[0].nodes[9].expandedTo[1].x + 120
					y: ( 530 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 108 / 115 ) * thickness
						angle: 5 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5 + (5)
					y: ( 695 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				6:
					x: contours[0].nodes[4].expandedTo[0].x + 200 * width + 137 - (25)
					# y: ( 545 / 750 ) * capHeight - (1)
					y: contours[0].nodes[7].expandedTo[0].y + ( ( 695 / 750 ) * capHeight - contours[0].nodes[7].expandedTo[0].y ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 99 / 115 ) * thickness
						angle: - 177 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					# x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					# y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					# dirIn: 30 + 'deg'
					# type: 'smooth'
					typeOut: 'line'
					dirIn: () ->
						Utils.log( (Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point ) - ( 10 / 180 * Math.PI )) * width )
						return contours[0].nodes[7].expand.angle + Math.PI / 2
					expand: Object({
						width: ( 83 / 115 ) * thickness * contrast
						angle: Math.min(
							Math.max(
								- Math.PI / 2,
								(Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point ) - ( 10 / 180 * Math.PI )) * width
							),
							0
						) - Math.PI
						distr: 0.9
					})
				8:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					# x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					# y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					# dirOut: - 156 + 'deg'
					# type: 'smooth'
					dirOut: contours[0].nodes[7].expand.angle + Math.PI / 2
					expand: Object({
						width: ( 83 / 115 ) * thickness * contrast
						angle: Math.min(
							Math.max(
								- Math.PI / 2,
								(Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point ) - ( 20 / 180 * Math.PI )) * width
							),
							0
						) - Math.PI
						distr: 0.75
					})
				9:
					x: spacingLeft + (30)
					y: ( 180 / 750 ) * capHeight + (4)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 121 / 115 ) * thickness
						angle: 180 + 7 + 'deg'
						distr: 0.75
					})
				10:
					x: Math.min(
						contours[0].nodes[9].expandedTo[1].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[1].x ) * 0.5 + (7),
						contours[0].nodes[9].expandedTo[0].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[0].x ) * 0.5
					)
					x: contours[0].nodes[9].expandedTo[1].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[1].x ) * 0.5 + (7)
					y: - overshoot - 10
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 114 / 115 ) * thickness * contrast
						angle: 180 + 82 + 'deg'
						distr: 1
					})
				11:
					x: contours[0].nodes[9].expandedTo[1].x + 200 * width + 330 - (26)
					y: ( 345 / 750 ) * capHeight + (6)
					dirIn: - 89 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 108 / 115 ) * thickness * contrast
						angle: - 13 + 'deg'
						distr: 0.75
					})
