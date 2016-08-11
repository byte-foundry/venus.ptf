exports.glyphs['daggerdbl'] =
	unicode: '‡'
	glyphName: 'daggerdbl'
	characterName: 'DOUBLE DAGGER'
	ot:
		advanceWidth: contours[1].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + thickness / 2 + 170
					y: ascenderHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 115 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 50 / 250 ) * descender
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 115 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 170
					y: contours[1].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: contours[0].nodes[0].y - ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[1].x )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[1].x
					y: contours[0].nodes[1].y + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[1].x )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
