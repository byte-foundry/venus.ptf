exports.glyphs['P_cap'] =
	unicode: 'P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 85 * spacing + (34) + serifWidth / 2
		spacingRight: 35 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 135,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: - 93 + 'deg'
						distr: 0
					})
				2:
					x: 300 + 220 * width + (100)
					y: ( 525 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 135,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: ( 300 / 750 ) * capHeight * crossbar + (26)
					dirIn: 0 + 'deg'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: 180 - 93 + 'deg'
						distr: 0.25
					})
				4:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[1].y
								typeIn: 'line'
							}
						]
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
					anchorLine: capHeight
					directionY: -1
					right: false
