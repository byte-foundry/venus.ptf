exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER I'
	altImg: 'full-serifs-i.svg'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (57) + serifWidth / 2
		spacingRight: 50 * spacing + 70 + serifWidth / 2
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
					x: spacingLeft
					y: Math.max(0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[1].x
					y: xHeight
					typeOut: 'line'
	components:
		0:
			base: 'title'
			id: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + thickness / 2
					y: xHeight + diacriticHeight
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'skewY', 15 * spurHeight + 'deg' ],
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
