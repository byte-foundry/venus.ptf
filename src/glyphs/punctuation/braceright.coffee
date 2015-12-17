exports.glyphs['braceright'] =
	unicode: '}'
	glyphName: "braceright"
	characterName: "RIGHT CURLY BRACKET"
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 30 * spacing
		spacingRight: 55 * spacing
	# All code below is a clone of braceleft reversed
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 70 * width
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					# should be:
					# x: contours[0].nodes[2].expandedTo[1].x + 60 * width
					# but circular depedencies bro'
					x: ( contours[0].nodes[2].x + ( thickness * ( 75 / 115 ) ) / 2 ) + 60 * width
					y: capHeight
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[5].x + Math.max( 70, 70 * width ) + (19)
					y: contours[0].nodes[5].expandedTo[0].y + ( (capHeight - thickness * ( 65 / 115 )) - contours[0].nodes[5].expandedTo[0].y ) * ( 1 - (0.17 * width))
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[0].y + ( 60 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 76 / 115 )
						angle: 11 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].x + 10 * width
					y: contours[0].nodes[5].expandedTo[0].y
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 76 / 115 )
						angle: - 23 + 'deg'
						distr: 0
					})
				5:
					x: spacingLeft
					y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) / 2
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 55 / 115 )
						angle: - 90 + 'deg'
						distr: 0.5
					})
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[5].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 55 / 115 )
						angle: 90 + 'deg'
						distr: 0.5
					})
				7:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[5].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 76 / 115 )
						angle: 23 + 'deg'
						distr: 0
					})
				8:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[1].y - ( 60 / 750 ) * capHeight
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 76 / 115 )
						angle: - 11 + 'deg'
						distr: 0.25
					})
				9:
					x: contours[0].nodes[8].x
					y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) * ( 0.17 * width )
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				10:
					x: contours[0].nodes[1].x
					y: ( 115 / 250 ) * descender
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: 90 + 'deg'
						distr: 0
					})
				11:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[10].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: 90 + 'deg'
						distr: 0
					})
			transformOrigin: Array(
				contours[0].nodes[5].x + ( contours[0].nodes[0].x - contours[0].nodes[5].x ) / 2,
				0
			)
			transforms: Array( [ 'scaleX', -1 ] )
	# contours:
	# 	0:
	# 		skeleton: true
	# 		closed: false
	# 		nodes:
	# 			0:
	# 				x: spacingLeft
	# 				y: capHeight
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 65 / 115 )
	# 					angle: - 90 + 'deg'
	# 					distr: 0
	# 				})
	# 			1:
	# 				x: contours[0].nodes[0].x + 70 * width
	# 				y: capHeight
	# 				dirOut: 0 + 'deg'
	# 				expand: Object({
	# 					width: thickness * ( 65 / 115 )
	# 					angle: - 90 + 'deg'
	# 					distr: 0
	# 				})
	# 			2:
	# 				x: contours[0].nodes[1].x + Math.max( 60, 60 * width ) + (19)
	# 				y: contours[0].nodes[4].expandedTo[0].y + ( (capHeight - thickness * ( 65 / 115 )) - contours[0].nodes[4].expandedTo[0].y ) * ( 1 - (0.17 * width))
	# 				dirOut: - 90 + 'deg'
	# 				expand: Object({
	# 					width: thickness * ( 75 / 115 )
	# 					angle: 180 + 'deg'
	# 					distr: 0.75
	# 				})
	# 			3:
	# 				x: contours[0].nodes[2].x
	# 				y: contours[0].nodes[4].expandedTo[0].y + ( 60 / 750 ) * capHeight
	# 				dirOut: - 90 + 'deg'
	# 				expand: Object({
	# 					width: thickness * ( 76 / 115 )
	# 					angle: 180 - 11 + 'deg'
	# 					distr: 0.75
	# 				})
	# 			4:
	# 				# x: contours[0].nodes[2].expandedTo[0].x + Math.max( 60, 60 * width )
	# 				x: contours[0].nodes[1].x + Math.max( 60, 60 * width ) + (0) + thickness * ( 75 / 115 ) + Math.max( 60, 60 * width )
	# 				y: contours[0].nodes[5].y + ( thickness * ( 55 / 115 ) ) / 2
	# 				dirIn: 180 + 'deg'
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 76 / 115 )
	# 					angle: 180 + 23 + 'deg'
	# 					distr: 0.5
	# 				})
	# 			5:
	# 				x: contours[0].nodes[4].expandedTo[0].x + 10 * width
	# 				y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) / 2
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 55 / 115 )
	# 					angle: - 90 + 'deg'
	# 					distr: 0.5
	# 				})
	# 			6:
	# 				x: contours[0].nodes[5].x
	# 				y: contours[0].nodes[5].y
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 55 / 115 )
	# 					angle: 90 + 'deg'
	# 					distr: 0.5
	# 				})
	# 			7:
	# 				x: contours[0].nodes[4].x
	# 				y: contours[0].nodes[5].expandedTo[1].y
	# 				dirOut: 0 + 'deg'
	# 				type: 'smooth'
	# 				expand: Object({
	# 					width: thickness * ( 76 / 115 )
	# 					angle: 180 - 23 + 'deg'
	# 					distr: 0
	# 				})
	# 			8:
	# 				x: contours[0].nodes[2].x
	# 				y: contours[0].nodes[5].expandedTo[1].y - ( 60 / 750 ) * capHeight
	# 				typeOut: 'line'
	# 				type: 'smooth'
	# 				expand: Object({
	# 					width: thickness * ( 76 / 115 )
	# 					angle: 180 + 11 + 'deg'
	# 					distr: 0.75
	# 				})
	# 			9:
	# 				x: contours[0].nodes[8].x
	# 				y: contours[0].nodes[11].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[11].expandedTo[1].y ) * ( 0.17 * width )
	# 				dirOut: - 90 + 'deg'
	# 				expand: Object({
	# 					width: thickness * ( 75 / 115 )
	# 					angle: 180 + 'deg'
	# 					distr: 0.75
	# 				})
	# 			10:
	# 				x: contours[0].nodes[1].x
	# 				y: ( 115 / 250 ) * descender
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 65 / 115 )
	# 					angle: 90 + 'deg'
	# 					distr: 0
	# 				})
	# 			11:
	# 				x: contours[0].nodes[0].x
	# 				y: contours[0].nodes[10].y
	# 				typeOut: 'line'
	# 				expand: Object({
	# 					width: thickness * ( 65 / 115 )
	# 					angle: 90 + 'deg'
	# 					distr: 0
	# 				})
