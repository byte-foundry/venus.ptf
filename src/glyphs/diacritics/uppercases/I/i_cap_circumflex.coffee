exports.glyphs['i_cap_circumflex'] =
	unicode: 'Î'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 85 * spacing + (67/115) * thickness + serifWidth / 2
		spacingRight: 85 * spacing + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
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
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
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
					anchorLine: capHeight
					directionY: -1
		2:
			base: 'circumflex'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x
					y: capHeight + diacriticHeight
