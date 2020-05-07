exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 50 + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
		1:
			x: ( contours[0].nodes[0].x + contours[3].nodes[1].expandedTo[0].x ) / 2
			y: contours[3].nodes[0].expandedTo[0].y
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
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - (1)
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 160 + 200 * width - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( ( 110 / defaultThickness ) * thickness * opticThickness * contrast ) / Math.cos( Math.PI / 2 + contours[1].nodes[1].expand.angle )
						angle: ( - 90 ) / 180 * Math.PI + (10 * serifRotate) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - (1)
					y: ( 387 / 750 ) * capHeight * crossbar
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 105 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 140 + 200 * width - Math.max( 0, serifHeight * serifArc )
					y: contours[2].nodes[0].y
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 105 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - (1)
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 175 + 200 * width - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: 0
					lineIn: 'line'
					expand:
						width: ( ( 110 / defaultThickness ) * thickness * opticThickness * contrast ) / Math.cos( Math.PI / 2 - contours[3].nodes[1].expand.angle )
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
			base: ['none', 'serif-horizontal', ]
			id: 'toprighttop'
			class: 'topOutsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( -10 * serifRotate ) / 180 * Math.PI ]
			)
			parameters:
				serifWidth: serifWidth / 3
		3:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			class: 'topInsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
			)
		4:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			class: 'middleTopHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			class: 'middleBottomHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
		6:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			class: 'bottomInsideHoriz'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1]
					noneAnchor: contours[3].nodes[1].expandedTo[1]
					opposite: contours[3].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ]
			)
		7:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			class: 'bottomOutsideHoriz'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
			parameters:
				serifWidth: serifWidth / 3
