exports.glyphs['braceleft'] =
	unicode: '{'
	glyphName: 'braceleft'
	characterName: 'LEFT CURLY BRACKET'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 30
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 70 * width
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 65 / defaultThickness )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					# should be:
					# x: contours[0].nodes[2].expandedTo[1].x + 60 * width
					# but circular depedencies bro'
					x: ( contours[0].nodes[2].x + ( thickness * ( 75 / defaultThickness ) ) / 2 ) + 60 * width
					y: capHeight
					dirOut: Math.PI
					expand:
						width: thickness * ( 65 / defaultThickness )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[5].x + Math.max( 70, 70 * width ) + (19)
					y: contours[0].nodes[5].expandedTo[0].y + ( (capHeight - thickness * ( 65 / defaultThickness )) - contours[0].nodes[5].expandedTo[0].y ) * ( 1 - (0.17 * width))
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: thickness * ( 75 / defaultThickness )
						angle: 0
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[0].y + ( 60 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: thickness * ( 76 / defaultThickness )
						angle:( 11 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[5].x + 10 * width
					y: contours[0].nodes[5].expandedTo[0].y
					typeOut: 'line'
					dirIn: 0
					expand:
						width: thickness * ( 76 / defaultThickness )
						angle:( - 23 ) / 180 * Math.PI
						distr: 0
				5:
					x: spacingLeft
					y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) / 2
					typeOut: 'line'
					expand:
						width: thickness * ( 55 / defaultThickness )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[5].y
					typeOut: 'line'
					expand:
						width: thickness * ( 55 / defaultThickness )
						angle: Math.PI / 2
						distr: 0.5
				7:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[5].expandedTo[1].y
					dirOut: 0
					typeIn: 'line'
					expand:
						width: thickness * ( 76 / defaultThickness )
						angle:( 23 ) / 180 * Math.PI
						distr: 0
				8:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[1].y - ( 60 / 750 ) * capHeight
					typeOut: 'line'
					dirIn: Math.PI / 2
					expand:
						width: thickness * ( 76 / defaultThickness )
						angle:( - 11 ) / 180 * Math.PI
						distr: 0.25
				9:
					x: contours[0].nodes[8].x
					y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) * ( 0.17 * width )
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: thickness * ( 75 / defaultThickness )
						angle: 0
						distr: 0.25
				10:
					x: contours[0].nodes[1].x
					y: ( 115 / 250 ) * descender
					typeOut: 'line'
					expand:
						width: thickness * ( 65 / defaultThickness )
						angle: Math.PI / 2
						distr: 0
				11:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[10].y
					typeIn: 'line'
					expand:
						width: thickness * ( 65 / defaultThickness )
						angle: Math.PI / 2
						distr: 0
