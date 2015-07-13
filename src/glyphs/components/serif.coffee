exports.glyphs['serif'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || 0
			leftWidth: parentAnchors[2].leftWidth * Math.min( serifWidth / 65, 1 ) || 0
			rightCurve: parentAnchors[2].rightCurve || 1
			leftCurve: parentAnchors[2].leftCurve || 1
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 0
			angle: parentAnchors[2].angle || - 90 + 'deg'
			directionY: parentAnchors[2].directionY || 1
			directionX: parentAnchors[2].directionX || 1
			anchor_0: parentAnchors[2].anchor_0 || parentAnchors[0].x
			anchor_1: parentAnchors[2].anchor_1 || parentAnchors[1].x
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { x: parentAnchors[0].x, y: anchors[2].anchorLine }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { x: parentAnchors[1].x, y: anchors[2].anchorLine }
			# baseRight: parentAnchors[2].baseRight
			# baseLeft: parentAnchors[2].baseLeft
			max0: parentAnchors[2].max0 || anchors[0].point
			max1: parentAnchors[2].max1 || anchors[1].point
			left: if typeof parentAnchors[2].left != 'undefined' then parentAnchors[2].left else true
			right: if typeof parentAnchors[2].right != 'undefined' then parentAnchors[2].right else true
			attaque: if typeof parentAnchors[2].attaque != 'undefined' then parentAnchors[2].attaque else false
			vertical: if typeof parentAnchors[2].vertical != 'undefined' then parentAnchors[2].vertical else false
			rightSerifBound: Utils.onLine( { y: contours[0].nodes[2].y, on: [ anchors[2].baseRight, contours[0].nodes[0].point ] } )
			leftSerifBound: Utils.onLine( { y: contours[0].nodes[8].y, on: [ anchors[2].baseLeft, contours[0].nodes[10].point ] } )
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: Math.max( anchors[0].x, anchors[2].max0.x )
					y: Math.max( anchors[0].y, anchors[2].max0.y )
					# dirOut:
						# if anchors[2].vertical == true
						# then 10 + 'deg'
						# else anchors[2].angle
					dirOut: anchors[2].angle
					tensionOut: 1.4 * serifRoundness * anchors[2].rightCurve
				1:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
							then Math.min(Utils.onLine({
								y: contours[0].nodes[1].y
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve),
							contours[0].nodes[2].x + 20 / (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * -(contours[0].nodes[2].x - Utils.onLine({
								y: contours[0].nodes[1].y
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}))) else Math.min( contours[0].nodes[2].x - serifWidth / 5, anchors[0].x + serifHeight + serifCurve + anchors[2].rightWidth * anchors[2].rightCurve )
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else anchors[2].anchorLine + serifHeight * anchors[2].directionY
					tensionOut: serifRoundness
					type: 'smooth'
					dirIn:
						if anchors[2].attaque == true
						then Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[5].point )
						else Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
				2:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
								if anchors[2].baseRight.x > contours[0].nodes[0].x
									Utils.onLine({
										y: contours[0].nodes[2].y
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									}) + ( serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
								else
									if anchors[2].rightSerifBound > ( anchors[2].baseRight.x + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) )
										Utils.onLine({
											y: contours[0].nodes[2].y
											on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
										})
									else
										anchors[2].baseRight.x + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
							else anchors[2].anchor_0 + serifWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if anchors[2].attaque == true
							then contours[0].nodes[4].y + ( serifHeight * serifMedian ) + ( (serifWidth + anchors[2].rightWidth) * (anchors[2].anchorLine + ( spurHeight * 50 - 50 ) * anchors[2].directionY) / (anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth) )
							else contours[0].nodes[4].y + ( serifHeight * serifMedian ) * anchors[2].directionY
						# else contours[0].nodes[4].y + ( serifHeight * serifMedian ) * anchors[2].directionY
					tensionOut: serifTerminalCurve
					type: 'smooth'
					typeIn: 'line'
				3:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) / 2 + serifTerminal * serifWidth
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else contours[0].nodes[4].y + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
								if anchors[2].baseRight.x < contours[0].nodes[0].x
									anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth )
								else
									if anchors[2].baseRight.x > anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) - ( Math.abs( Utils.onLine({
										y: contours[0].nodes[2].y
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									}) - anchors[2].baseRight.x ) )
										anchors[2].baseRight.x
									else
										anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth * Math.min( 1, serifWidth ) - ( Math.abs( Utils.onLine({
											y: contours[0].nodes[2].y
											on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
										}) - anchors[2].baseRight.x ) )
							else contours[0].nodes[0].x - ( contours[0].nodes[0].x - contours[0].nodes[2].x ) * midWidth
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else anchors[2].anchorLine
					tensionOut: serifTerminalCurve
					type: 'smooth'
					dirIn: 180 + 'deg'
					dirOut: 0 + 'deg'
					# x:
					# 	if anchors[2].right == false
					# 	then anchors[2].baseRight.x
					# 	else
					# 		if parentAnchors[2].baseRight
					# 		then Math.max(
					# 			anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth,
					# 			Utils.onLine({
					# 				y: contours[0].nodes[2].y
					# 				on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
					# 		}) + serifWidth * midWidth + anchors[2].rightWidth )
					# 		else contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * midWidth
					# y:
					# 	if anchors[2].right == false
					# 	then anchors[2].baseRight.y
					# 	else
					# 		if anchors[2].attaque == true
					# 		then anchors[2].anchorLine + ( spurHeight * 50 - 50 ) * anchors[2].directionY
					# 		else anchors[2].anchorLine
					# dirIn: 0 + 'deg'
					# type: 'smooth'
					# tensionIn: serifTerminalCurve
				5:
					x:
						if anchors[2].attaque == true
						then anchors[0].x + ( 10 / 85 ) * thickness
						else contours[0].nodes[4].x - ( contours[0].nodes[4].x - contours[0].nodes[6].x ) / 2
					y: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionY
					dirIn:
						if anchors[2].attaque == true
						then Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[5].point )
						else 0 + 'deg'
					dirOut: 180 + 'deg'
				6:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
								if anchors[2].baseLeft.x > contours[0].nodes[10].x
									anchors[2].baseLeft.x - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth )
								else
									if anchors[2].baseLeft.x < anchors[2].baseLeft.x - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth ) + ( Math.abs( Utils.onLine({
										y: contours[0].nodes[8].y
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
									}) - anchors[2].baseLeft.x ) )
										anchors[2].baseLeft.x
									else
										anchors[2].baseLeft.x - serifWidth * midWidth - anchors[2].leftWidth * Math.min( 1, serifWidth ) + ( Math.abs( Utils.onLine({
											y: contours[0].nodes[8].y
											on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
										}) - anchors[2].baseLeft.x ) )
							else contours[0].nodes[10].x - ( contours[0].nodes[10].x - contours[0].nodes[8].x ) * midWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine
					tensionOut: serifTerminalCurve
					# dirIn: 0 + 'deg'
					dirOut: 0 + 'deg'
				7:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else contours[0].nodes[8].x - ( contours[0].nodes[8].x - contours[0].nodes[6].x ) / 2 - serifTerminal * serifWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					type: 'smooth'
					dirOut: Utils.lineAngle( contours[0].nodes[6].point ,contours[0].nodes[8].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				8:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
								if anchors[2].baseLeft.x < contours[0].nodes[10].x
									Utils.onLine({
										y: contours[0].nodes[8].y
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
									}) - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
								else
									if anchors[2].leftSerifBound < anchors[2].baseLeft.x - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
										Utils.onLine({
											y: contours[0].nodes[8].y
											on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
										})
									else
										anchors[2].baseLeft.x - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
							else anchors[2].anchor_1 - ( serifWidth + anchors[2].leftWidth * Math.min( 1, serifWidth ) )
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].directionY
					tensionIn: serifTerminalCurve
					typeOut: 'line'
					dirIn: 0 + 'deg'
				9:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
							then Math.max(Utils.onLine({
								y: contours[0].nodes[9].y
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}) - (serifCurve + serifHeight + anchors[2].leftWidth * anchors[2].leftCurve),
							contours[0].nodes[8].x + 20 / (serifCurve+serifHeight + anchors[2].leftWidth * anchors[2].leftCurve) * -(contours[0].nodes[8].x - Utils.onLine({
								y: contours[0].nodes[9].y
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}))) else Math.max( contours[0].nodes[8].x + serifWidth / 5, anchors[1].x - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + serifHeight * anchors[2].directionY
					tensionOut: serifRoundness
					type: 'smooth'
				10:
					x: Math.max( anchors[1].x, anchors[2].max1.x )
					y: Math.max( anchors[1].y, anchors[2].max1.y )
					# dirIn:
					# 	if anchors[2].vertical == true
					# 	then 10 + 'deg'
					# 	else anchors[2].angle
					dirIn: anchors[2].angle
					typeOut: 'line'
					tensionIn: 1.4 * serifRoundness * anchors[2].leftCurve
