exports.glyphs['n'] =
	unicode: 'n'
	glyphName: 'n'
	characterName: 'LATIN SMALL LETTER N'
	altImg: 'default-n.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + serifWidth / 2
		spacingRight: 50 * spacing + 65 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (29/115) * thickness
					y: Math.max(0, serifHeight * serifArc )
					dirOut:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: Math.max(0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 175 + ( 40 / defaultThickness ) * thickness ) + 200 * width - (29), # thickness is related to width
						contours[0].nodes[0].expandedTo[1].x + ( thickness * contours[1].nodes[1].expand.distr ) + minSpace # we set a minimum space between the stems
					)
					y: xHeight - 205
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.1
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				2:
					x: Math.min(
						contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].expandedTo[1].x ) * 0.55,
						contours[1].nodes[1].expandedTo[0].x
					)
					y: xHeight + overshoot / 2
					dirOut: Math.PI
					typeIn: 'smooth'
					# tensionOut: 1 * breakPath
					expand:
						width: ( 113 / 115 ) * thickness * contrast
						angle:( 180 - 113 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 150 - ( 50 / 115 ) * thickness
					dirIn: Math.PI / 2
					expand:
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0
		# 2:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: xHeight
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
		# 			x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expandedTo[1].x ) / 2
		# 			y: xHeight
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
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
