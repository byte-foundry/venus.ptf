exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[8].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x + ( contours[0].nodes[8].x - contours[0].nodes[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x + 15 + Math.max( 0, serifHeight * serifArc ) + + ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[3].expandedTo[1].x + ( 15 / 115 ) * thickness
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[8].x - 16 + Math.max( 0, serifHeight * serifArc )
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 70 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 137 / 115 ) * thickness
						angle: - 177 + 'deg'
						distr: 0
				4:
					x: spacingLeft
					y: contours[0].nodes[5].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 1
				5:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 70 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
				6:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 70 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 1
				7:
					x: contours[0].nodes[4].expandedTo[0].x - ( 10 / 115 ) * thickness
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 1
				8:
					# x: 200 + 40 + 200 * width
					x: contours[0].nodes[5].expandedTo[0].x + 200 * width + 210 - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
		1:
			closed: true
			skeleton: false
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'skewX', 15 * serifRotate + 'deg' ],
			)
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 100
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 100
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: 'serif-horizontal'
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX', - 15 * serifRotate + 'deg' ],
			)
		1:
			base: 'serif-horizontal'
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[8].expandedTo[0]
					opposite: contours[0].nodes[8].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[8].expandedTo[1]
			transforms: Array(
				[ 'skewX', 10 * serifRotate + 'deg' ],
				[ 'scaleY', -1 ],
				[ 'translateY', 2 * (90 / 115) * thickness]
			)
