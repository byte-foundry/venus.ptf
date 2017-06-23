exports.glyphs['smallzero'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			height: parentAnchors[0].height
			revert: parentAnchors[0].revert
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].x - (anchors[0].height * 0.6) / 2 * width - 20
					y: contours[0].nodes[0].y + anchors[0].height / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + anchors[0].height
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand:
						width: ( 60 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
				3:
					x: contours[0].nodes[0].x + (anchors[0].height * 0.6) / 2 * width + 20
					y: contours[0].nodes[1].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 65 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
			transformOrigin: Array(
				anchors[0].x,
				anchors[0].y
			)
			transforms: if anchors[0].revert == true then Array( [ 'rotate', Math.PI ] ) else Array( [ 'rotate', 0 ] )
