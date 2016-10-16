exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 70 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (31)
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 125 / 115) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 # (207 / 365)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						# width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						width: ( 102 / 115 ) * thickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 215 + 200 * width - (12),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 50 / 115 ) * thickness * contrast * contrastExtremity + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						# width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						width: ( 102 / 115 ) * thickness * contrast
						angle: 68 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: ( 155 / 250 ) * descender + Math.max(0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight - Math.max(0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
				# [ 'skewY', 15 * spurHeight + 'deg' ],
				# [ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
