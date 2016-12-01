exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (39)
					y: 0
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.4
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					# x: 235 + (0)
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.55
					y: ( 310 / 750 ) * capHeight - (6)
					dirOut: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[2].expandedTo[1].point ) - Math.PI / Math.max( 5, ( 80 / 115 ) * thickness * contrast )
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( (115 + (47 * width)) / 115 ) * thickness * opticThickness * contrast
						angle: - 9 + 'deg'
						distr: 0.25
					})
				2:
					# x: 300 + 250 * width - (34)
					x: spacingLeft + 200 * width + 310 - (34)
					y: ( 520 / 750 ) * capHeight + (2)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: - 4 + 35 - 35 * contrast + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						angle: Math.max( 50, 50 + ( 40 * contrast ) ) + 'deg'
						distr: 1
					})
				4:
					x: contours[1].nodes[0].expandedTo[0].x + 5 + (30)
					y: ( 535 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.75
					})
				5:
					# x: 90 + (30)
					x: contours[1].nodes[4].x + 42
					y: ( 385 / 750 ) * capHeight + (15)
					dirIn: 128 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 134 / 115 ) * thickness * opticThickness * contrast
						angle: 180 + 27 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', - 10 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
