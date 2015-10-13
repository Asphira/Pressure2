"friends/tradeinvitebar.res" {
	styles {
		CTradeInviteBar {
			bgcolor=bluegrey500

			render {
				1="image_tiled(x0,y1,x1,y1+4, graphics\material\shadows\top)"
			}
			render_bg {
				0="image(x0+12,y0+16,x1,y1, graphics/invitebars/trade)"
			}
		}
		
		Button {
			bgcolor=none
			textcolor=none

			render {
				1="image(x0,y0,x1,y1, graphics/icons/closebar/standard/closebar)"
			}

			render_bg {}
		}

			Button:hover {
				render {
					1="image(x0,y0,x1,y1, graphics/icons/closebar/hover/closebar)"
				}
			}

			Button:active {
				render {
					-3="image(x0-9,y0-9,x0+10,y0+10, graphics/material/selectionbubbles/hover/white/topleft)"
					-2="image(x0-9,y0+10,x0+10,y0+22, graphics/material/selectionbubbles/hover/white/bottomleft)"
					-1="image(x0+10,y0-9,x0+29,y0+10, graphics/material/selectionbubbles/hover/white/topright)"
					0="image(x0+10,y0+10,x0+29,y0+29, graphics/material/selectionbubbles/hover/white/bottomright)"
					1="image(x0,y0,x1,y1, graphics/icons/closebar/hover/closebar)"
				}
			}

		Label {
			textcolor=white
			font-family=mediumfont
			font-size=16
		}
	}
	
	layout {
		place {
			control="InviteImage,InviteSentImage"
			width=0
			height=0
		}
		
		place {
			control="InviteLabel,ClickHereLabel,InviteSentLabel,WaitingForResponseLabel"
			width=max
			dir=down
			spacing=4
			margin-top=20
			margin-right=45
			margin-left=72
		}
		
		place {
			control="CloseButton"
			align=right
			width=20
			height=20
			margin-right=14
			y=26
		}
	}
}