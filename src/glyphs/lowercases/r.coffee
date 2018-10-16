# TODO: vertical serif?
exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth / 2
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
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
					x: contours[1].nodes[1].x + 10 * width
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						# width: Math.cos( contours[1].nodes[1].expand.angle ) * contours[1].nodes[1].expand.width
						width: Math.cos( (5) / 180 * Math.PI ) * contours[1].nodes[1].expand.width
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 2 * minSpace,
						140 + 200 * width
					)
					y: xHeight
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 125 / 115 ) * thickness * contrast
						angle: ( 180 - 95 ) / 180 * Math.PI
						distr: 1
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 240 - ( 50 / 115 ) * thickness
					dirOut: Math.PI / 2
					expand:
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0
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
					# spur: 20
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		# 3:
		# 	base: 'serif-horizontal'
		# 	id: 'topright'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[1].nodes[0].expandedTo[0]
		# 			opposite: contours[1].nodes[0].expandedTo[1]
