exports.glyphs['perthousand'] =
	unicode: '‰'
	glyphName: 'perthousand'
	characterName: 'PER MILLE SIGN'
	ot:
		advanceWidth: contours[3].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', ( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 40 / 115 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 365 + 100 * width
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 40 / 115 ) * thickness * contrast
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].x - 60 - 50 * width + (6)
					y: ( contours[1].nodes[1].y - contours[1].nodes[3].y ) / 2 - (6)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( 0 / 180 ) * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 280 / 750 ) * ascenderHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( - 90 / 180 ) * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[1].x + 60 + 50 * width - (2),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * ( 60 / 115 ) * thickness + 10
					)
					y: contours[1].nodes[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( - 180 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (20/80) * thickness
					y: ascenderHeight + overshoot - ( contours[2].nodes[1].y - contours[2].nodes[3].y ) / 2
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( 0 / 180 ) * Math.PI
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) * ( 143 / 285 )
					y: ascenderHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( - 90 / 180 ) * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x + 140 + 100 * width - (2),
						contours[2].nodes[0].expandedTo[1].x + 0.75 * ( 60 / 115 ) * thickness + 10
					)
					y: contours[2].nodes[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( - 180 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[2].nodes[1].expandedTo[0].x
					y: ascenderHeight - ( 280 / 750 ) * ascenderHeight - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
		3:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x + 35 * width + (20/80) * thickness
					y: contours[1].nodes[2].y
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( 0 / 180 ) * Math.PI
						distr: 0.25
				1:
					x: contours[3].nodes[0].expandedTo[0].x + ( contours[3].nodes[2].expandedTo[0].x - contours[3].nodes[0].expandedTo[0].x ) * ( 143 / 285 )
					y: contours[1].nodes[1].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( - 90 / 180 ) * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[3].nodes[0].expandedTo[0].x + 140 + 100 * width - (2),
						contours[3].nodes[0].expandedTo[1].x + 0.75 * ( 80 / 115 ) * thickness + 10
					)
					y: contours[3].nodes[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: ( - 180 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[1].nodes[3].y
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
