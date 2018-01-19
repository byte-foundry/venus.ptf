exports.glyphs['questiondown'] =
	unicode: '¿'
	glyphName: 'questiondown'
	characterName: 'INVERTED QUESTION MARK'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI],
		['scaleY', -1],
		['translateY', capHeight],
		['scaleX', -1],
		['translateX', contours[0].nodes[2].expandedTo[0].x],
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 15
		spacingRight: 50 * spacing + 35
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (28)
					y: ( 560 / 750 ) * capHeight - (5)
					dirOut:( 85 ) / 180 * Math.PI
					expand:
						width: ( 112 / 115 ) * thickness
						angle:( - 10 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * ( 0.55 + (0.05 - 0.05 * width) )
					y: capHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 90 / 115 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 270,
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 120 / 115 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 120 / 115 ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.65
					y: ( (400 + ( (45 / 115) * thickness )) / 750 ) * capHeight - (19)
					# TODO: it should depends of thickness
					dirOut: Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y} )
					dirOut: Math.max(
						25,
						Math.min(
							35,
							(( 35 / 115 ) * thickness) / 750 * capHeight
						)
					) / 180 * Math.PI
					typeIn: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.4
					expand:
						width: ( 110 / 115 ) * thickness
						angle:( 180 - 43 ) / 180 * Math.PI
						distr: 0.75
				4:
					x: contours[0].nodes[1].x - ( 8 / 115 ) * thickness
					y: minThickness + 170 - ( 85 / 115 ) * thickness
					dirIn: Math.PI / 2
					tensionIn: 1.4
					expand:
						width: ( 110 / 115 ) * thickness
						angle: Math.PI
						distr: 0.5
	components:
		0:
			base: 'dot'
			id: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[4].x
					y: 0
