exports.glyphs['asterisk'] =
	unicode: '*'
	glyphName: 'asterisk'
	characterName: 'ASTERISK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + 120 + spacingRight
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
					x: spacingLeft + 120 + (thickness * ( 96 / defaultThickness )) / 2
					y: capHeight + overshoot
					typeOut: 'line'
					expand:
						width: thickness * ( 96 / defaultThickness )
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 160
					typeIn: 'line'
					expand:
						width: thickness * ( 54 / defaultThickness ) * contrast
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			transformOrigin: Object({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})
			transforms: Array( [ 'rotate',( 72 ) / 180 * Math.PI ] )
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
			transformOrigin: Object({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})
			transforms: Array( [ 'rotate',( 144 ) / 180 * Math.PI ] )
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
			transformOrigin: Object({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})
			transforms: Array( [ 'rotate',( 216 ) / 180 * Math.PI ] )
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: contours[0].nodes[0].expand.angle
						distr: contours[0].nodes[0].expand.distr
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: contours[0].nodes[1].expand.angle
						distr: contours[0].nodes[1].expand.distr
			transformOrigin: Object({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})
			transforms: Array( [ 'rotate',( 288 ) / 180 * Math.PI ] )
