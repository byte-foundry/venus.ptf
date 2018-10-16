exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	altImg: 'default-u.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + serifWidth / 2
		spacingRight: 50 * spacing + 70 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.max(
						70 + ( 1 - thickness * contrast * contrastExtremity / 60 ) * 80,
						70
					) + ( 140 / defaultThickness ) * thickness * contrast * contrastExtremity
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 30 / defaultThickness ) * thickness * contrast
						angle: Math.PI
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.54
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					tensionOut: 1.3
					expand:
						width: ( 110 / defaultThickness ) * thickness * contrast
						angle:( 71 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[3].x
					y: 150 + ( 50 / defaultThickness ) * thickness
					dirIn:( -90 ) / 180 * Math.PI
					tensionIn: 1.1
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				3:
					x: spacingLeft + (29/defaultThickness) * thickness
					y: xHeight - Math.max(0, serifHeight * serifArc )
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
						contours[0].nodes[3].expandedTo[0].x + 200 * width + 100 + (29),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(0, serifHeight * serifArc ) + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: xHeight - Math.max(0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y + 10
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y + 10
					typeOut: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x ) / 2
					y: 0
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[3]
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				# [ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
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
		# 			base: contours[0].nodes[0].expandedTo[1]
		# 			noneAnchor: contours[0].nodes[0].expandedTo[1]
		# 			opposite: contours[0].nodes[0].expandedTo[0]
		# 	transformOrigin: contours[0].nodes[0].expandedTo[1]
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
