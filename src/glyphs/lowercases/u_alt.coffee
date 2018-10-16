exports.glyphs['u_alt'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	altImg: 'squared-u.svg'
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
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
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
					y: xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.1
					expand:
						width: thickness
						angle: 0
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 94 / defaultThickness ) * thickness * contrast
						angle:( 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 94 / defaultThickness ) * thickness * contrast
						angle: ( 90 ) / 180 * Math.PI
						distr: 0
	components:
		0:
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
				# [ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				# [ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				# [ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ]
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0 ) ) ]
			)
		# 3:
		# 	base: ['none', 'serif-vertical']
		# 	id: 'topright'
		# 	class: 'upperRightInsideStump'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[1].expandedTo[1]
		# 			noneAnchor: contours[0].nodes[1].expandedTo[1]
		# 			opposite: contours[0].nodes[1].expandedTo[0]
		# 	transformOrigin: contours[0].nodes[1].expandedTo[1]
		# 	transforms: Array(
		# 		[ 'scaleX', -1 ],
		# 		[ 'scaleY', -1 ]
		# 	)
		# 4:
		# 	base: ['none', 'serif-vertical']
		# 	id: 'topright2'
		# 	class: 'upperRightOutsideStump'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[1].nodes[1].expandedTo[1]
		# 			noneAnchor: contours[1].nodes[1].expandedTo[1]
		# 			opposite: contours[1].nodes[1].expandedTo[0]
		# 	transformOrigin: contours[1].nodes[1].expandedTo[1]
		# 	transforms: Array(
		# 		[ 'scaleX', -1 ],
		# 		[ 'scaleY', -1 ]
		# 	)
