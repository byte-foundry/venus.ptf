exports.glyphs['asterisk'] =
	unicode: '*'
	glyphName: 'asterisk'
	characterName: 'ASTERISK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + 120 + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 120 + (thickness * ( 96 / 115 )) / 2
					y: capHeight + overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 96 / 115 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 160
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 54 / 115 ) * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
					})
			transformOrigin: Array( contours[0].nodes[1].x, contours[0].nodes[1].y )
			transforms: Array( [ 'rotate', 72 + 'deg' ] )
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
					})
			transformOrigin: Array( contours[0].nodes[1].x, contours[0].nodes[1].y )
			transforms: Array( [ 'rotate', 144 + 'deg' ] )
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
					})
			transformOrigin: Array( contours[0].nodes[1].x, contours[0].nodes[1].y )
			transforms: Array( [ 'rotate', 216 + 'deg' ] )
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
					})
			transformOrigin: Array( contours[0].nodes[1].x, contours[0].nodes[1].y )
			transforms: Array( [ 'rotate', 288 + 'deg' ] )
