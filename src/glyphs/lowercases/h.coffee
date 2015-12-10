exports.glyphs['h'] =
	unicode: 'h'
	glyphName: "h"
	characterName: "LATIN SMALL LETTER H"
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 + (29) + serifWidth / 2
		spacingRight: 70 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - serifHeight - serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: xHeight - Math.max(
										75 + ( 1 - thickness * contrastExtremity / 60 ) * 150,
										75
									)
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											# 60 is the breakpoint where thickness takes effect
											# 50 is the velocity
											# 80 is the max dirOut
											90 + ( 1 - thickness / 60 ) * 50 * contrastExtremity,
											90 # dirOut must not be over 80 deg
										),
										56 # dirOut must not be under 56 deg
									) + 'deg'
								tensionOut: 1 * breakPath
							}
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: contours[1].nodes[0].expandedTo[0].y - ( ( 130 / 115 ) * thickness * contrast * contrastExtremity )
								dirIn: # 90 + 'deg'
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
								tensionIn: 1 * breakPath
							}
						]
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness * contrast
						angle: - 113 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 185 * width + (172)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
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
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					directionY: -1
					right: false
			transformOrigin: Array( contours[0].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: 0
