exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 15 + serifWidth
		spacingRight: 50 * spacing + 15 + serifWidth
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
					x: contours[1].nodes[1].expandedTo[0].x + 27 + (37)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					# x: contours[1].nodes[1].expandedTo[0].x + 405 + 200 * width - (109)
					x: contours[1].nodes[1].x - 0.25 * (( 155 / 115 ) * thickness * opticThickness * contrast) + 405 + 200 * width - (109)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: contours[0].nodes[1].expandedTo[1].x
					x: contours[0].nodes[1].x + 0.75 * (( 155 / 115 ) * thickness * opticThickness)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) ) * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: spacingLeft + (37)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif-oblique-acute'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
		1:
			base: 'serif-oblique-acute'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: 'serif-oblique-acute'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
					scaleX: -1
		3:
			base: 'serif-oblique-obtuse'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: 'serif-oblique-acute'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: 'serif-oblique-acute'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
					scaleX: -1
		6:
			base: 'serif-oblique-obtuse'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: 'serif-oblique-obtuse'
			parentParameters:
				serifHeight: 1 + serifHeight
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
