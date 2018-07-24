exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (67/115) * thickness + serifWidth / 2
		spacingRight: 50 * spacing + 30 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight + diacriticHeight
		1:
			x: Math.min(
				contours[1].nodes[0].x + ( contours[1].nodes[1].x - contours[1].nodes[0].x ) / 2 + serifWidth,
				contours[1].nodes[1].x - thickness * ( 125 / 115 ) / 2
			)
			y: capHeight + overshoot
		2:
			x: contours[0].nodes[0].expandedTo[0].x - 80
			y: contours[0].nodes[1].expandedTo[0].y / 2 - 50
		3:
			x: ( contours[1].nodes[1].expandedTo[1].x + contours[1].nodes[0].expandedTo[1].x ) / 2
			y: contours[0].nodes[1].expandedTo[1].y / 2 + 50
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - (1)
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 125 + 200 * width - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: 0
					lineIn: 'line'
					expand:
						width: ( ( 110 / 115 ) * thickness * opticThickness * contrast ) / Math.cos( Math.PI / 2 - contours[1].nodes[1].expand.angle )
						angle: Math.PI / 2 - (10 * serifRotate) / 180 * Math.PI
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
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStump'
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
		3:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			class: 'bottomInsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ]
			)
		4:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			class: 'bottomOutsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
			parameters:
				serifWidth: serifWidth / 3
