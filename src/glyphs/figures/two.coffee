exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 50
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
					x: contours[1].nodes[2].expandedTo[1].x + 15
					y: 0
					typeOut: 'line'
					expand:
						width: ( ( 130 / 115 ) * thickness * opticThickness ) / Math.cos( Math.PI / 2 - contours[0].nodes[1].expand.angle )
						angle: Math.PI / 2 - (10 * serifRotate) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					lineIn: 'line'
					expand:
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (39)
					y: 0
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.4
					expand:
						width: ( 145 / 115 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					# x: 235 + (0)
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.55
					y: ( 310 / 750 ) * capHeight - (6)
					dirOut: Utils.lineAngle({x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y}, {x: contours[1].nodes[2].expandedTo[1].x, y: contours[1].nodes[2].expandedTo[1].y} ) - Math.PI / Math.max( 5, ( 80 / 115 ) * thickness * contrast )
					typeIn: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( (115 + (47 * width)) / 115 ) * thickness * opticThickness * contrast
						angle:( - 9 ) / 180 * Math.PI
						distr: 0.25
				2:
					# x: 300 + 250 * width - (34)
					x: spacingLeft + 200 * width + 310 - (34)
					y: ( 520 / 750 ) * capHeight + (2)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle:( - 4 + 35 - 35 * contrast ) / 180 * Math.PI
						distr: 0.75
				3:
					x: contours[1].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) * 0.5
					y: capHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: Math.PI / 2
						angle: Math.max( 50,( 50 + ( 40 * contrast ) ) ) / 180 * Math.PI
						distr: 1
				4:
					x: contours[1].nodes[0].expandedTo[0].x + 5 + (30)
					y: ( 535 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 130 / 115 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.75
				5:
					# x: 90 + (30)
					x: contours[1].nodes[4].x + 42
					y: ( 385 / 750 ) * capHeight + (15)
					dirIn:( 128 ) / 180 * Math.PI
					expand:
						width: ( 134 / 115 ) * thickness * opticThickness * contrast
						angle:( 180 + 27 ) / 180 * Math.PI
						distr: 0.75
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			class: 'bottomInsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ]
			)
		1:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			class: 'bottomOutsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
