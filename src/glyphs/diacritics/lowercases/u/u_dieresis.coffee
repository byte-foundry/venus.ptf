exports.glyphs['u_dieresis'] =
	unicode: 'ü'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	parameters:
		spacingLeft: 65 * spacing + (29) + serifWidth / 2
		spacingRight: 70 * spacing + serifWidth / 2
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 200
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast
						angle: 71 + 'deg'
						distr: 0
					})
				3:
					expandedTo:
						[
							{
								x: contours[1].nodes[0].expandedTo[0].x
								# y: contours[0].nodes[3].expandedTo[1].y - ( 140 / 115 ) * thickness * contrast * contrastExtremity
								y: Math.max(
										70 + ( 1 - thickness * contrast * contrastExtremity / 60 ) * 80,
										# 70 + ( 1 - thickness / 60 ) * 80,
										70
									)
								dirIn:
									Math.max(
										Math.min(
											# 60 is the breakpoint where thickness takes effect
											# 50 is the velocity
											# 80 is the max dirOut
											80 + ( 1 - thickness / 60 ) * 50 * contrastExtremity,
											80 # dirOut must not be over 80 deg
										),
										57 # dirOut must not be under 56 deg
									) + 'deg'
							}
							{
								x: contours[1].nodes[0].expandedTo[0].x
								y: contours[0].nodes[3].expandedTo[0].y + ( 140 / 115 ) * thickness * contrast * contrastExtremity
								dirOut:
									Math.min(
										Math.max(
											80 - ( 1 - thickness * contrast * contrastExtremity / 60 ) * 50,
											80
										),
										90
									) + 'deg'
							}

						]
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 50 + 250 * width - (29)
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					directionY: -1
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: xHeight
					directionY: -1
					right: false
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: 0
					left: false
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
		3:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - 95 / 2 - minThickness / 2
					y: xHeight + diacriticHeight
		4:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2 + 95 / 2 + minThickness / 2
					y: xHeight + diacriticHeight
