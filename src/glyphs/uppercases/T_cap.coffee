exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth / 2 * serifRotate
		spacingRight: 50 * spacing + 10 + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + 375 + 200 * width - 2 * Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		1:
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
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		3:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		# TODO: both sides of top serifs
		# 4:
		# 	base: ['serif-horizontal', 'none']
		# 	id: 'topleft2'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[0].expandedTo[0]
		# 			opposite: contours[0].nodes[0].expandedTo[1]
		# 			# reversed: true
		# 	transformOrigin: contours[0].nodes[0].expandedTo[0]
		# 	transforms: Array(
		# 		[ 'scaleX', -1 ],
		# 		[ 'scaleY', -1 ],
		# 		[ 'skewX',( 15 * serifRotate ) / 180 * Math.PI ],
		# 		[ 'translateX', - ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
		# 	)
