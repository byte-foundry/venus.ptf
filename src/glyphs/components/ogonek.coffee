# exports.glyphs['ogonek'] =
# 	glyphName: "ogonek"
# 	characterName: "OGONEK"
# 	anchors:
# 		0:
# 			x: parentAnchors[0].x
# 			y: parentAnchors[0].y
# 			normal: parentAnchors[0].normal
# 			middle: parentAnchors[0].middle
# 			# angle: parentAnchors[0].angle
# 	tags: [
# 		'component',
# 		'diacritic'
# 	]
# 	contours:
# 		0:
# 			skeleton: true
# 			closed: false
# 			nodes:
# 				0:
# 					x: anchors[0].x
# 					y: anchors[0].y
# 					dirOut: Math.min(
# 						anchors[0].normal,
# 						Math.PI + Math.PI / 3
# 					)
# 					tensionOut: 0.5
# 					expand: Object({
# 						width: thickness * ( 50 / 115 ) * contrast * contrastExtremity
# 						angle: Math.PI / 2 + anchors[0].normal
# 						distr: 1
# 					})
# 				1:
# 					# x: anchors[0].x - ( anchors[0].y - 150 ) / Math.tan( Math.PI - anchors[0].normal )
# 					# x: Math.min(
# 					# 	anchors[0].x - ( anchors[0].y - 150 ) / Math.tan( Math.PI - anchors[0].normal ),
# 					# 	contours[0].nodes[0].expandedTo[0].x - 65
# 					# )
# 					x: contours[0].nodes[0].expandedTo[0].x - 65
# 					x: anchors[0].middle
# 					y: anchors[0].y - 120
# 					y: descender + ( anchors[0].y - descender ) * 0.5
# 					dirIn: 90 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 65 / 115 )
# 						angle: 180 - 171 + 'deg'
# 						distr: 0
# 					})
# 				2:
# 					x: Math.max(
# 						contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 100 / 195 ),
# 						contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
# 					)
# 					y: contours[0].nodes[0].expandedTo[0].y - 250
# 					y: descender
# 					dirOut: 0 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: ( 55 / 90 ) * thickness * contrast
# 						angle: 90 + 'deg'
# 						distr: 0
# 					})
# 				3:
# 					x: contours[0].nodes[1].expandedTo[1].x + 195 - (43)
# 					y: contours[0].nodes[2].y + Math.max(
# 						( 55 / 90 ) * thickness * contrast + 35 - (11),
# 						55
# 					)
# 					dirIn: - 115 + 'deg'
# 					expand: Object({
# 						width: ( 57 / 90 ) * thickness * contrast * contrastExtremity
# 						angle: 180 - 38 + 'deg'
# 						distr: 0.25
# 					})
