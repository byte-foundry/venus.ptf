exports.glyphs['serif-v'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || 0
			maxWidth: if typeof parentAnchors[2].maxWidth != 'undefined' then parentAnchors[2].maxWidth else false
			leftWidth: parentAnchors[2].leftWidth * Math.min( serifWidth / 65, 1 ) || 0
			rightCurve: parentAnchors[2].rightCurve || 1
			leftCurve: parentAnchors[2].leftCurve || 1
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 0
			# angle: parentAnchors[2].angle || 0 + 'deg'
			angleTop: parentAnchors[2].angle || ( parentAnchors[2].angleTop || 0 + 'deg' )
			angleBottom: parentAnchors[2].angle || ( parentAnchors[2].angleBottom || 0 + 'deg')
			directionY: parentAnchors[2].directionY || 1
			directionX: parentAnchors[2].directionX || 1
			anchor_0: parentAnchors[2].anchor_0 || parentAnchors[0].y
			anchor_1: parentAnchors[2].anchor_1 || parentAnchors[1].y
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { x: parentAnchors[0].x, y: anchors[2].anchorLine }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { x: parentAnchors[1].x, y: anchors[2].anchorLine }
			max0: parentAnchors[2].max0 || anchors[0].point
			max1: parentAnchors[2].max1 || anchors[1].point
			left: if typeof parentAnchors[2].left != 'undefined' then parentAnchors[2].left else true
			right: if typeof parentAnchors[2].right != 'undefined' then parentAnchors[2].right else true
			attaque: if typeof parentAnchors[2].attaque != 'undefined' then parentAnchors[2].attaque else false
			vertical: if typeof parentAnchors[2].vertical != 'undefined' then parentAnchors[2].vertical else false
			rightSerifBound: if typeof parentAnchors[2].baseRight != 'undefined' then Utils.onLine( { x: contours[0].nodes[2].x, on: [ anchors[2].baseRight, contours[0].nodes[0].point ] } ) else 0;
			leftSerifBound: if typeof parentAnchors[2].baseLeft != 'undefined' then Utils.onLine( { x: contours[0].nodes[8].x, on: [ anchors[2].baseLeft, contours[0].nodes[10].point ] } ) else 0;
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					y: Math.max( anchors[0].y, anchors[2].max0.y )
					x: Math.max( anchors[0].x, anchors[2].max0.x )
					dirOut: anchors[2].angleBottom
					tensionOut: 1.4 * serifRoundness * anchors[2].rightCurve
				1:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
							then Math.min(Utils.onLine({
								x: contours[0].nodes[1].x
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve),
							contours[0].nodes[2].y - 20 / (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * -(contours[0].nodes[2].x - Utils.onLine({
								x: contours[0].nodes[1].x
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}))) else Math.min( contours[0].nodes[2].y - serifWidth / 5, anchors[0].y + serifHeight + serifCurve + anchors[2].rightWidth * anchors[2].rightCurve )
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else anchors[2].anchorLine - serifHeight * anchors[2].directionX
					tensionIn: serifRoundness
					type: 'smooth'
					dirIn:
						if anchors[2].attaque == true
						then Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[5].point )
						else Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
				2:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
								if anchors[2].baseRight.y > contours[0].nodes[0].y
									Utils.onLine({
										x: contours[0].nodes[2].x
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									}) + ( serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
								else
									if anchors[2].rightSerifBound > ( anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
										Utils.onLine({
											x: contours[0].nodes[2].x
											on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
										})
									else
										if anchors[2].maxWidth != true
										then Math.min( capHeight + overshoot * 2, anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
										else anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
							else anchors[2].anchor_0 + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if anchors[2].attaque == true
							then contours[0].nodes[4].x - ( serifHeight * serifMedian ) + ( (serifWidth + anchors[2].rightWidth) * (anchors[2].anchorLine + ( spurHeight * 50 - 50 ) * anchors[2].directionX) / (anchors[2].baseRight.y + serifWidth * midWidth + anchors[2].rightWidth) )
							else contours[0].nodes[4].x - ( serifHeight * serifMedian ) * anchors[2].directionX
					tensionOut: serifTerminalCurve
					type: 'smooth'
					typeIn: 'line'
				3:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if anchors[2].maxWidth != true
							then Math.min( capHeight + overshoot * 2 + serifTerminal * serifWidth, contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 + serifTerminal * serifWidth )
							else contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 + serifTerminal * serifWidth
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[4].x - (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionX
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
								if anchors[2].baseRight.y < contours[0].nodes[0].y
									if anchors[2].maxWidth != true
									then Math.min( capHeight + overshoot * 2, anchors[2].baseRight.y + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
									else anchors[2].baseRight.y + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
								else
									if anchors[2].baseRight.y > anchors[2].baseRight.y + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) - ( Math.abs( Utils.onLine({
										x: contours[0].nodes[2].x
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									}) - anchors[2].baseRight.y ) )
										anchors[2].baseRight.y
									else
										anchors[2].baseRight.y + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) - ( Math.abs( Utils.onLine({
											x: contours[0].nodes[2].x
											on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
										}) - anchors[2].baseRight.y ) )
							else contours[0].nodes[0].y - ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * midWidth
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else anchors[2].anchorLine
					tensionIn: serifTerminalCurve
					type: 'smooth'
					dirIn: 90 + 'deg'
					dirOut: 270 + 'deg'
				5:
					y:
						if anchors[2].attaque == true
						then anchors[0].y + ( 10 / 85 ) * thickness
						else contours[0].nodes[4].y - ( contours[0].nodes[4].y - contours[0].nodes[6].y ) / 2
					x: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionX
					dirIn:
						if anchors[2].attaque == true
						then Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[5].point )
						else 90 + 'deg'
					dirOut: 270 + 'deg'
				6:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
								if anchors[2].baseLeft.y < contours[0].nodes[10].y
									anchors[2].baseLeft.y - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth )
								else
									if anchors[2].baseLeft.y < anchors[2].baseLeft.y - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth ) + ( Math.abs( Utils.onLine({
										x: contours[0].nodes[8].x
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
									}) - anchors[2].baseLeft.y ) )
										anchors[2].baseLeft.y
									else
										anchors[2].baseLeft.y - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth ) + ( Math.abs( Utils.onLine({
											x: contours[0].nodes[8].x
											on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
										}) - anchors[2].baseLeft.y ) )
							else contours[0].nodes[10].y - ( contours[0].nodes[10].y - contours[0].nodes[8].y ) * midWidth
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine
					tensionOut: serifTerminalCurve
					dirIn: 90 + 'deg'
					dirOut: - 90 + 'deg'
				7:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else contours[0].nodes[8].y - ( contours[0].nodes[8].y - contours[0].nodes[6].y ) / 2 - serifTerminal * serifWidth
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine - (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionX
					type: 'smooth'
					dirOut: Utils.lineAngle( contours[0].nodes[6].point ,contours[0].nodes[8].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				8:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
								if anchors[2].baseLeft.y > contours[0].nodes[10].y
									Utils.onLine({
										x: contours[0].nodes[8].x
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
									}) - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
								else
									if anchors[2].leftSerifBound < anchors[2].baseLeft.y - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
										Utils.onLine({
											x: contours[0].nodes[8].x
											on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
										})
									else
										anchors[2].baseLeft.y - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
							else anchors[2].anchor_1 - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine - ( serifHeight * serifMedian ) * anchors[2].directionX
					tensionIn: serifTerminalCurve
					typeOut: 'line'
					dirIn: - 90 + 'deg'
				9:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
							then Math.max(Utils.onLine({
								x: contours[0].nodes[9].x
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}) - (serifCurve + serifHeight + anchors[2].leftWidth * anchors[2].leftCurve),
							contours[0].nodes[8].y + 20 / (serifCurve+serifHeight + anchors[2].leftWidth * anchors[2].leftCurve) * -(contours[0].nodes[8].y - Utils.onLine({
								x: contours[0].nodes[9].x
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}))) else Math.max( contours[0].nodes[8].y + serifWidth / 5, anchors[1].y - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine - serifHeight * anchors[2].directionX
					tensionOut: serifRoundness
					type: 'smooth'
				10:
					y: Math.max( anchors[1].y, anchors[2].max1.y )
					x: Math.max( anchors[1].x, anchors[2].max1.x )
					dirIn: anchors[2].angleTop
					typeOut: 'line'
					tensionIn: 1.4 * serifRoundness * anchors[2].leftCurve
