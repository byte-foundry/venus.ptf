exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
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
					x: spacingLeft + (34)
					y: ( 245 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 140 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 120 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					# x: 200 + 210 * width + (109)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 165 + (109),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / defaultThickness ) * thickness * opticThickness + 10
					)
					y: ( 210 / 750 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 145 / defaultThickness ) * thickness * opticThickness
						angle:( 180 - 2 ) / 180 * Math.PI
						distr: 0.25
				3:
					expandedTo:
						[
							{
								x: contours[0].nodes[4].expandedTo[1].x + ( 110 / defaultThickness ) * thickness + 60
								y: contours[0].nodes[4].expandedTo[0].y
								typeOut: 'line'
								dirIn: - Math.max(
									( 15 / defaultThickness ) * thickness - 15 * width + 15,
									0 ) / 180 * Math.PI
							}
							{
								x: contours[0].nodes[4].expandedTo[1].x + 60
								y: contours[0].nodes[4].expandedTo[1].y
								typeIn: 'line'
								dirOut: 0
							}
						]
				4:
					x: contours[0].nodes[1].x - 85
					y: ( 350 / 750 ) * capHeight - ( 60 / defaultThickness ) * thickness + 60
					dirIn: 0
					expand:
						width: ( 73 / defaultThickness ) * thickness * opticThickness
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].expandedTo[0].y - ( 20 / defaultThickness ) * thickness
					typeOut: 'line'
					expand:
						width: ( 52 / defaultThickness ) * thickness * opticThickness
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 0
				1:
					expandedTo:
						[
							{
								x: contours[1].nodes[0].expandedTo[1].x + ( 90 / defaultThickness ) * thickness + 85
								y: contours[1].nodes[0].expandedTo[0].y
								dirOut: Math.max(
									( 15 / defaultThickness ) * thickness - 15 * width + 15,
									0 ) / 180 * Math.PI
							}
							{
								x: contours[1].nodes[0].expandedTo[1].x + 80
								y: contours[1].nodes[0].expandedTo[1].y
								dirIn: 0
							}
						]
				2:
					x: contours[0].nodes[2].x - (26)
					y: ( 555 / 750 ) * capHeight + (8)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 125 / defaultThickness ) * thickness * opticThickness
						angle:( 180 + 5 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 92 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 25 + (34)
					y: capHeight  - ( 210 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.25
