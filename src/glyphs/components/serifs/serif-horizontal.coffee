exports.glyphs['serif-horizontal'] =
	parameters:
		serifheight:
			if serifwidth < 0.05
			then serifheight = 5
			else
				if serifwidth >= 0.05
				then math.max(serifheight, 3);
				else serifheight = serifheight
		serifcurve:
			if serifwidth < 0.05
			then serifcurve = 0
			else serifcurve = serifcurve
	anchors:
		0:
			y: parentanchors[0].base.y
			x: parentanchors[0].base.x + math.max( 0, serifarc * serifheight )
		1:
			y: parentanchors[0].base.y + math.abs( parentanchors[0].opposite.y - parentanchors[0].base.y ) * 0.5
		2:
			rotate: parentanchors[0].rotate || 0
	tags: [
		'component'
	]
	contours:
		0:
			exportreversed: parentanchors[0].reversed == true
			closed: true
			nodes:
				0:
					y: anchors[0].y
					x: anchors[0].x - ( serifheight + serifcurve )
					typein: 'line'
					dirout: 180 + 'deg'
					tensionout: serifroundness
					transformorigin: contours[0].nodes[5]
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				1:
					y: anchors[0].y + math.max(
						( contours[0].nodes[2].y - anchors[0].y ) * 0.85,
						- math.abs( contours[0].nodes[0].x - ( anchors[0].x - serifheight ) )
					)
					x: anchors[0].x - ( serifheight - ( ( contours[0].nodes[1].y - anchors[0].y ) / (serifwidth || 0.01) ) * (serifmedian - 1) * serifheight )
					dirin: utils.lineangle( {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} )
					typeout: 'line'
					tensionin: serifroundness
					transformorigin: contours[0].nodes[5]
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				2:
					y: anchors[0].y - serifwidth
					x: anchors[0].x - ( serifheight * serifmedian )
					typein: 'line'
					typeout: 'line'
					tensionout: serifterminalcurve
					transformorigin: contours[0].nodes[5]
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				3:
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifwidth || 0.01) ) * ( serifmedian - 1 ) ) - serifterminal * serifheight
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifwidth || 0.01) ) * ( serifmedian - 1 ) )
					dirout: utils.lineangle( {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y} )
					typein: 'smooth'
					tensionout: serifterminalcurve
					tensionin: serifterminalcurve
					transformorigin: contours[0].nodes[5]
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				4:
					y: anchors[0].y - serifwidth * midwidth
					x: anchors[0].x
					typein: 'smooth'
					tensionin: serifterminalcurve
					dirout: 90 + 'deg'
					transformorigin: contours[0].nodes[5]
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				5:
					y: anchors[1].y
					x: anchors[0].x - serifarc * serifheight
					dirin: 90 + 'deg'
					typeout: 'line'
					transformorigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: array([ 'skewx', anchors[2].rotate + 'deg' ])
				6:
					y: contours[0].nodes[5].y
					x: contours[0].nodes[0].x
					typein: 'line'
					typeout: 'line'
