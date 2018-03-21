exports.glyphs['arobase'] =
	unicode: '@'
	glyphName: 'at'
	characterName: 'COMMERCIAL AT'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 700 + 200 * width
					y: ( - 242 - 0.25 * ( 75 / 115 ) * thickness ) / 2
					dirOut:( - 145 ) / 180 * Math.PI
					expand:
						width: ( 70 / 115 ) * thickness * contrast * contrastExtremity
						angle:( - 55 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: - 242
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 75 / 115 ) * thickness * contrast
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: spacingLeft + (53/90) * thickness
					y: contours[0].nodes[1].y + ( contours[0].nodes[3].y - contours[0].nodes[1].y ) * 0.5
					dirOut: Math.PI / 2
					expand:
						width: ( 85 / 115 ) * thickness
						angle:( 180 + 0 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) * 0.5
					y: xHeight + 260
					dirOut: 0
					expand:
						width: ( 75 / 115 ) * thickness * contrast
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 100
					y: ( 343 / 500 ) * xHeight
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 85 / 115 ) * thickness
						angle: 0
						distr: 0.75
				5:
					x: contours[0].nodes[6].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[6].expandedTo[1].x ) * 0.5
					y: 0
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 75 / 115 ) * thickness * contrast
						angle:( 180 + 62 ) / 180 * Math.PI
						distr: 0.75
				6:
					x: contours[1].nodes[1].x + 100 * width + 50
					y: Math.max(
						( 200 / 500 ) * xHeight,
						200
					)
					dirIn: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} )
					typeOut: 'line'
					expand:
						width: ( 105 / 115 ) * thickness
						angle:( 180 + 0 ) / 180 * Math.PI
						distr: 0.75
				7:
					x: contours[0].nodes[6].x + 15 + Math.min( 20, ( 20 / 500 ) * xHeight )
					y: ( 480 / 500 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 105 / 115 ) * thickness
						angle:( 180 + 0 ) / 180 * Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[7].y - ( 240 / 500 ) * xHeight
						on: [ contours[0].nodes[6].expandedTo[1], contours[0].nodes[7].expandedTo[1] ]
					})
					y: contours[0].nodes[7].y - ( 240 / 500 ) * xHeight
					dirOut: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} )
					# tensionOut: 1.2
					expand:
						width: ( 45 / 115 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} ) + Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: ( 490 / 500 ) * xHeight
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 100 / 115 ) * thickness * contrast
						angle: Math.PI + Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} )
						distr: 0
				2:
					x: contours[1].nodes[1].x - 150 - 80 * width + (25/90) * thickness
					y: contours[1].nodes[3].y + ( contours[1].nodes[0].y - contours[1].nodes[3].y ) * 0.5
					y: contours[0].nodes[2].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} )
					type: 'smooth'
					expand:
						width: ( 115 / 115 ) * thickness
						angle: 0
						distr: 0.75
				3:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x ) * 0.55
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.45
					y: 20
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 100 / 115 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y}, {x: contours[0].nodes[7].x, y: contours[0].nodes[7].y} )
						distr: 0.25
				4:
					x: contours[0].nodes[6].expandedTo[1].x
					y: contours[0].nodes[6].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[7].x, y: contours[0].nodes[7].y}, {x: contours[0].nodes[6].x, y: contours[0].nodes[6].y} )
					expand:
						width: ( 50 / 115 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 1
