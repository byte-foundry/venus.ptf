exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 50
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
					x: spacingLeft + (29/defaultThickness) * thickness
					y: Math.max(0, serifHeight * serifArc )
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
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.15
					tensionIn: 1.15
					expand:
						width: ( 49 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * (207 / 415)
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 102 / defaultThickness ) * thickness * contrast
						angle:( - 112 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 280 + 200 * width - (32),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 125 / defaultThickness ) * thickness + 10
					)
					y: contours[1].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 125 / defaultThickness ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 102 * (1/5) / defaultThickness ) * thickness + ( 102 * (4/5) / defaultThickness ) * thickness * contrast
						angle:( 112 ) / 180 * Math.PI
						distr: 0
		# 2:
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
		# 			x: contours[0].nodes[1].expandedTo[0].x
		# 			y: contours[0].nodes[1].expandedTo[0].y - 10
		# 			typeOut: 'line'
		# 			typeIn: 'line'
		# 		3:
		# 			x: contours[0].nodes[1].expandedTo[0].x
		# 			y: contours[0].nodes[1].expandedTo[0].y
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
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
