exports.glyphs['_slash'] =
	glyphName: "_slash"
	characterName: "_slash"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: ( 85 / 115 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
				1:
					x: anchors[1].x
					y: anchors[1].y
					expand:
						width: ( 85 / 115 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
