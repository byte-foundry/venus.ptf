exports.glyphs['l'] =
	unicode: 'l'
	glyphName: 'l'
	characterName: 'LATIN SMALL LETTER L'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth
		spacingRight: 50 * spacing + 70 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 50 + thickness * ( 125 / 115 ) / 2
			y: ascenderHeight + overshoot
		1:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: ascenderHeight + diacriticHeight / 2
		2:
			x: contours[0].nodes[0].expandedTo[0].x - 80
			y: contours[0].nodes[1].expandedTo[0].y / 2 - 50
		3:
			x: contours[0].nodes[0].expandedTo[1].x + 80
			y: contours[0].nodes[1].expandedTo[1].y / 2 + 50
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (57)
					y: Math.max(0, serifHeight * serifArc )
					dirOut:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max(0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: thickness
						angle: 0
						distr: 0.5
		# 1:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: ascenderHeight
		# 			typeOut: 'line'
		# 		1:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y - 10
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[0].nodes[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y - 10
		# 			typeOut: 'line'
		# 		3:
		# 			x: contours[0].nodes[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			typeOut: 'line'
		# 		4:
		# 			x: contours[0].nodes[1].x
		# 			y: ascenderHeight
		# 			typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
