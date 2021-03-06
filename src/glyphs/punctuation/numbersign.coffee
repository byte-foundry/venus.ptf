exports.glyphs['numbersign'] =
	unicode: '#'
	glyphName: 'numbersign'
	characterName: 'NUMBER SIGN'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
		'test'
	]
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (2)
					y: 230
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 200 * width + 183 + (20)
					y: 230
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + Math.tan( 0.139626 ) * ( contours[1].nodes[1].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) ## 0.139626 rad = 8 deg
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x +
						Math.tan( 0.139626 ) *
						( xHeight + ( Math.cos( 0.139626 ) * ( ( 95 / 115 ) * thickness ) ) / 2 - contours[0].nodes[0].expandedTo[0].y )
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].x - ( contours[3].nodes[1].x - contours[2].nodes[1].x )
					y: xHeight + contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 110 / 115 ) * thickness * contrast * contrastExtremity , minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 115 * width + (55)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 110 / 115 ) * thickness * contrast * contrastExtremity , minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - Math.max( thickness / 2, 120 * width ) - (29)
					y: xHeight + contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 110 / 115 ) * thickness * contrast * contrastExtremity , minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - Math.max( thickness / 2, 120 * width ) - (81)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 110 / 115 ) * thickness * contrast * contrastExtremity , minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
