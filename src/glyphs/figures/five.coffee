exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].expandedTo[0].x + 25 + (33)
					y: ( 350 / 750 ) * capHeight - (7)
					typeOut: 'line'
					expand:
						width: ( 133 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 13 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[1].expandedTo[0].x - 130 - 85 * contrast # 110
					y: capHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[2].expandedTo[1].y ) / Math.sin( Math.PI + contours[0].nodes[1].expand.angle )
						angle: - Math.PI / 2 + ( 45 * contrast ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 55,
						contours[1].nodes[2].x
					)
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( ( 130 / 115 ) * thickness * opticThickness ) / Math.cos( Math.PI / 2 + contours[1].nodes[1].expand.angle )
						angle: ( - 94 ) / 180 * Math.PI - (10 * serifRotate) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut:( 48 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness # * contrast * contrastExtremity
						angle: Utils.lineAngle( {x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) + Math.PI
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.55
					# x: contours[1].nodes[2].expandedTo[0].x
					y: ( 490 / 750 ) * capHeight - (28)
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 113 / 115 ) * thickness * opticThickness
						angle:( 180 + 77 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: Math.max(
						contours[1].nodes[4].expandedTo[0].x + 200 * width + 310 - (36),
						contours[1].nodes[4].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 235 / 750 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				4:
					x: spacingLeft + (35)
					y: ( 245 / 750 ) * capHeight
					dirIn:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 140 / 115 ) * thickness * opticThickness # * contrast
						angle: 0
						distr: 0.25
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'toprighttop'
			class: 'topOutsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0]
					noneAnchor: contours[0].nodes[2].expandedTo[0]
					opposite: contours[0].nodes[2].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( 4 + 10 * serifRotate ) / 180 * Math.PI ]
			)
		1:
			base: ['none', 'serif-horizontal', ]
			id: 'topright'
			class: 'topInsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1]
					noneAnchor: contours[0].nodes[2].expandedTo[1]
					opposite: contours[0].nodes[2].expandedTo[0]
			transformOrigin: contours[0].nodes[2].expandedTo[1]
			transforms: Array(
				[ 'skewX',( 4 + 10 * serifRotate ) / 180 * Math.PI ],
			)
