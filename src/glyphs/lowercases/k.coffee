exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 10
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
					x: spacingLeft + (29/115) * thickness
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 108 / 115 ) * thickness * 0.25
					y: ( 195 / 520 ) * xHeight + (5)
					typeOut: 'line'
					expand:
						width: ( 140 / 115 ) * thickness * contrast * contrastExtremity
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 0.75
				1:
					x: Math.max(
						contours[2].nodes[0].expandedTo[1].x - 15 - (35),
						contours[0].nodes[0].expandedTo[1].x + 50 + 0.75 * (( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness)
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness
						angle: 0
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 177 + 200 * width + (98)
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 107 + (98),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * (( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness) + 10
					)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness # TODO: apply this hack on each oblic
						angle: 0
						distr: 0.75
				1:
					x: Utils.onLine({
						y: ( 325 / 520 ) * xHeight + (5)
						on: [ contours[1].nodes[1].expandedTo[1], contours[1].nodes[0].expandedTo[1] ]
					})
					y: ( 325 / 520 ) * xHeight + (5)
					typeIn: 'line'
					expand:
						width: ( 127 / 115 ) * thickness + (width - 1) * ( 4 / 115 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y} )
						distr: 0.75
		# 3:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: ascenderHeight
		# 			typeOut: 'line'
		# 			typeIn: 'line'
		# 		1:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y - 10
		# 			typeOut: 'line'
		# 			typeIn: 'line'
		# 		2:
		# 			x: contours[0].nodes[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y - 10
		# 			typeOut: 'line'
		# 			typeIn: 'line'
		# 		3:
		# 			x: contours[0].nodes[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			typeOut: 'line'
		# 			typeIn: 'line'
		# 		4:
		# 			x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expandedTo[1].x ) / 2
		# 			y: ascenderHeight
		# 			typeOut: 'line'
		# 			typeIn: 'line'
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
			class: 'lowerLeftInsideStump'
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
				[ 'scaleY', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
					reversed: true
					scaleX: -1
