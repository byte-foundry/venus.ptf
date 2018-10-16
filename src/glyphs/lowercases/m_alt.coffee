exports.glyphs['m_alt'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	altImg: 'alt-grotesk-squared-m.svg'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + spacingRight
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
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (29/defaultThickness) * thickness
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
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 170 + ( 40 / defaultThickness ) * thickness ) + 200 * width - (64), # thickness is related to width
						contours[0].nodes[0].expandedTo[1].x + ( thickness * contours[1].nodes[0].expand.distr ) + minSpace # we set a minimum space between the stems
					)
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: Math.max(0, serifHeight * serifArc)
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: xHeight
					dirOut: Math.PI / 2
					typeIn: 'line'
					tensionOut: 1.1
					expand:
						width: thickness
						angle: 0
						distr: 0.5
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 380 + ( 40 / defaultThickness ) * thickness ) + 200 * width - (85), # thickness is related to width
						contours[0].nodes[0].expandedTo[1].x + thickness + ( thickness * ( contours[2].nodes[0].expand.distr ) ) + 2 * minSpace # we set a minimum space between the stems
					)
					y: Math.max(0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[2].nodes[0].x
					y: xHeight
					dirOut: Math.PI / 2
					typeIn: 'line'
					tensionOut: 1.1
					expand:
						width: thickness
						angle: 0
						distr: 0.75
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 109 / defaultThickness ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[2].nodes[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 109 / defaultThickness ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		# 3:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: xHeight
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
		# 			y: xHeight
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
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
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
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomleft3'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomright3'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
