exports.glyphs['t_caron'] =
	unicode: 'ť'
	glyphName: "tcaron"
	characterName: "LATIN SMALL LETTER T WITH CARON"
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 90 * spacing + (29) * width
		spacingRight: 30 * spacing
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[0].x
								y: ascenderHeight - ( 95 / 115 ) * thickness
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: ascenderHeight
								typeIn: 'line'
							}
						]
				1:
					x: spacingLeft
					y: 30 + thickness #* contrast
					dirOut: - 90 + 'deg'
					tensionOut: 1.25
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					typeOut: 'line'
					type: 'smooth'
					tensionIn: 1.6
					expand: Object({
						width: ( 107 / 115 ) * thickness * contrast * contrastExtremity
						angle: 62 + 'deg'
						distr: 0
					})
				3:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[1].x + 60 * width
								y: contours[0].nodes[2].expandedTo[0].y
							}
							{
								x: contours[0].nodes[3].expandedTo[0].x
								y: contours[0].nodes[2].expandedTo[1].y
							}
						]
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 10
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'caronSlovak'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 50 + thickness * ( 125 / 115 ) / 2
					y: ascenderHeight + overshoot
