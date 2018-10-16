# TODO: width + thickness
exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					dirOut:( - 158 ) / 180 * Math.PI
					expand:
						width: ( 98 / defaultThickness ) * thickness * contrast
						angle:( 99 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[11].expandedTo[1].x + 20
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					tensionOut: 1.5
					expand:
						width: ( 105 / defaultThickness ) * thickness * contrast
						angle:( 85 ) / 180 * Math.PI
						distr: 0
				2:
					x: 386 + (23)
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: ( 133 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y}, {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y} )
					typeIn: 'smooth'
					expand:
						width: ( 130 / defaultThickness ) * thickness
						angle:( 9 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: 192 + (23)
					x: contours[0].nodes[4].x + ( contours[0].nodes[10].expandedTo[1].x - contours[0].nodes[4].x ) * 0.5
					# x: contours[0].nodes[10].expandedTo[1].x
					y: ( 355 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} )
					typeIn: 'smooth'
					expand:
						width: ( 112 / defaultThickness ) * thickness
						angle:( 35 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: 127 + (27)
					x: contours[0].nodes[9].expandedTo[1].x + 120
					y: ( 530 / 750 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 108 / defaultThickness ) * thickness
						angle:( 5 ) / 180 * Math.PI
						distr: 0.25
				5:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5 + (5)
					y: ( 695 / 750 ) * capHeight
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				6:
					x: contours[0].nodes[4].expandedTo[0].x + 200 * width + 137 - (25)
					# y: ( 545 / 750 ) * capHeight - (1)
					y: contours[0].nodes[7].expandedTo[0].y + ( ( 695 / 750 ) * capHeight - contours[0].nodes[7].expandedTo[0].y ) * 0.5
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 99 / defaultThickness ) * thickness
						angle:( - 177 ) / 180 * Math.PI
						distr: 0.25
				7:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					# x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					# y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					# dirIn:( 30 ) / 180 * Math.PI
					# type: 'smooth'
					typeOut: 'line'
					dirIn: () ->
						Utils.log( (Utils.lineAngle( {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} ) - ( 10 / 180 * Math.PI )) * width )
						return contours[0].nodes[7].expand.angle + Math.PI / 2
					expand:
						width: ( 83 / defaultThickness ) * thickness * contrast
						angle: Math.min(
							Math.max(
								- Math.PI / 2,
								(Utils.lineAngle( {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} ) - ( 10 / 180 * Math.PI )) * width
							),
							0
						) - Math.PI
						distr: 0.9
				8:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					# x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					# y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					# dirOut:( - 156 ) / 180 * Math.PI
					# type: 'smooth'
					dirOut: contours[0].nodes[7].expand.angle + Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 83 / defaultThickness ) * thickness * contrast
						angle: Math.min(
							Math.max(
								- Math.PI / 2,
								(Utils.lineAngle( {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} ) - ( 20 / 180 * Math.PI )) * width
							),
							0
						) - Math.PI
						distr: 0.75
				9:
					x: spacingLeft + (30)
					y: ( 180 / 750 ) * capHeight + (4)
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 121 / defaultThickness ) * thickness
						angle:( 180 + 7 ) / 180 * Math.PI
						distr: 0.75
				10:
					x: Math.min(
						contours[0].nodes[9].expandedTo[1].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[1].x ) * 0.5 + (7),
						contours[0].nodes[9].expandedTo[0].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[0].x ) * 0.5
					)
					x: contours[0].nodes[9].expandedTo[1].x + ( contours[0].nodes[11].expandedTo[0].x - contours[0].nodes[9].expandedTo[1].x ) * 0.5 + (7)
					y: - overshoot - 10
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 114 / defaultThickness ) * thickness * contrast
						angle:( 180 + 82 ) / 180 * Math.PI
						distr: 1
				11:
					x: contours[0].nodes[9].expandedTo[1].x + 200 * width + 330 - (26)
					y: ( 345 / 750 ) * capHeight + (6)
					dirIn:( - 89 ) / 180 * Math.PI
					expand:
						width: ( 108 / defaultThickness ) * thickness * contrast
						angle:( - 13 ) / 180 * Math.PI
						distr: 0.75
