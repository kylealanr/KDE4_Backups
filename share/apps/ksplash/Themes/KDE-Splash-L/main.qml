/*   vim:set foldenable foldmethod=marker:
 *
 *   Nowardev (C) 2012  <nowardev(at)gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import Qt 4.7
import QtQuick 1.1

Item {
    id: main

    width: screenSize.width
    height: screenSize.height
    // width: 300
    // height: 300

    /* property declarations --------------------------{{{ */
    property int stage
    property int iconSizeGear: (screenSize.width <= 1024) ? 64 : 90
    property int iconSizeLoading: (screenSize.width <= 1024) ? 50 : 50

    property int iconSize: (screenSize.width <= 1024) ? 62 : 62
    property int iconSizeFonts: (screenSize.width <= 1024) ? 50 : 300
 
    //var img = (Math.floor(4 * Math.random(2)));

    
    /* }}} */

    /* signal declarations ----------------------------{{{ */

    /* }}} */

    /* JavaScript functions ---------------------------{{{ */
    

        /* }}} */

    /* object properties ------------------------------{{{ */

    /* }}} */

    /* child objects ----------------------------------{{{ */

    
    
    
    //  OPACITY ANIMATION WHILE IS LOADING
    onStageChanged: {
        if (stage == 1) {
  	    background.opacity = 1

    	    kde.opacity = 0.3

	    loadingText.opacity = 1
	    message.opacity = 1
	    freedom.opacity = 1
	    
	    pointLeft.opacity = 0.5
	    pointCenter.opacity = 0.8
	    pointRight.opacity = 1
	    
	    
        }
        if (stage == 2) {	    
	    kde.opacity = 0.4
    	    loadingText.opacity = 0.5
    	    message.opacity = 0.9
	    freedom.opacity = 0.7
	    
	    pointLeft.opacity = 1
	    pointCenter.opacity = 0.5
	    pointRight.opacity = 0.8
	
        }
        if (stage == 3) {
	    kde.opacity = 0.5            
       	    loadingText.opacity = 0.7
       	    message.opacity = 1
	    freedom.opacity = 1
	    
	    pointLeft.opacity = 0.8
	    pointCenter.opacity = 1
	    pointRight.opacity = 0.5
	    
        }
        if (stage == 4) {
	    kde.opacity = 0.6
	    loadingText.opacity = 0.3
	    
        }
        if (stage == 5) {
	    kde.opacity = 0.7	    
	    loadingText.opacity = 0.8
	    message.opacity = 0.9
	    freedom.opacity = 1
	    
	    pointLeft.opacity = 0.5
	    pointCenter.opacity = 0.8
	    pointRight.opacity = 1
        }
        if (stage == 6) {
	    kde.opacity = 1
	    loadingText.opacity = 0.8
	    message.opacity = 1
	    freedom.opacity = 1
	    
	    pointLeft.opacity = 0.9
	    pointCenter.opacity = 0.9
	    pointRight.opacity = 0.9
        }
        if (stage == 7) {
	    kde.opacity = 1 
	    loadingText.opacity = 0.9
	    message.opacity = 1
	    freedom.opacity = 0.9	    
        }
    }
    
//     //  OPACITY ANIMATION WHILE IS LOADING END!
// 
// BACKGROUND IMAGE
    Image {
        id: background
	source: "images/background.png"
	anchors.fill: parent
	anchors {
	    top: parent.top
            left: parent.left
            right: parent.right
        }
	height: gear.y - 32
	opacity: 0
 
    }
// 
//     
//     //ALTERNATE BACKGROUND WITH GRADIENT
//     Rectangle {
//         color: "black"
//         anchors.fill: parent
//     }
// 
//     Rectangle {
//         id: backgroundSecond
// 
//         gradient: Gradient {
//             GradientStop { position: 0.0; color: "#55555f" }
//             GradientStop { position: 1.0; color: "#000000" }
//         }
// 
//         anchors {
//             top: parent.top
//             left: parent.left
//             right: parent.right
//         }
// 
//         height: gear.y - 32
// 
//         opacity: 0.5
//         Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
//     }
//     //ALTERNATE BACKGROUND WITH GRADIENT
//     
    
    
    
    
    Image {
	id: windone
	//height: iconSizeGear
	//width: iconSizeGear
	smooth: true
	x: (parent.width - width) / 2
	y: (parent.height - height) / 2
	source: "images/window.png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
	id: winRandom
	//height: iconSizeGear
	//width: iconSizeGear
	smooth: true
	x: (parent.width - width) / 2 
	y: 46+(parent.height - height) / 2
	source: "images/"+Math.floor(3 * Math.random()*2+1).toString()+".png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
	id: kde
	//height: iconSizeGear
	//width: iconSizeGear
	smooth: true
	x: -175 + (parent.width - width) / 2 
	y: 100 + (parent.height - height) / 2
	source: "images/kde.png"
	opacity: 0
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    

    
    Image {
	id: location
	//height: iconSizeGear
	//width: iconSizeGear
	smooth: true
	x: 170 + (parent.width - width) / 2
	y: 205 + (parent.height - height) / 2
	source: "images/location.png"
	opacity: 0.7
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    
     Text {
	  id: message
            // HTML like markup can also be used
            //text: '<font color="white">Welcome to Plasma by <b>KDE</b> the most Modern Desktop Environment.</font>'
            text: '<font color="white"><b>W</b>elcome to <b>P</b>lasma by <b>KDE</b></font>'
	    
            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 18

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: 18 + (parent.width - width) / 2 
	    y: -175 + (parent.height - height) / 2
	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
    Text {
	  id: freedom
            // HTML like markup can also be used
            text: '<font color="white"><b>¡Experience Freedom!</b></font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 14

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: 18 + (parent.width - width) / 2 
	    y: -145 + (parent.height - height) / 2
	    opacity: 0.9
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
     Text {
	  id: pointLeft
            // HTML like markup can also be used
            text: '<font color="white"><b>.</b></font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 24

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: -15 + (parent.width - width) / 2 
	    y: -125 + (parent.height - height) / 2
	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     } 
     
     Text {
	  id: pointCenter
            // HTML like markup can also be used
            text: '<font color="white"><b>.</b></font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 24

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: (parent.width - width) / 2 
	    y: -125 + (parent.height - height) / 2
	    opacity: 0.6
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
     Text {
	  id: pointRight
            // HTML like markup can also be used
            text: '<font color="white"><b>.</b></font>'
            
            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 24

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: 15 + (parent.width - width) / 2 
	    y: -125 + (parent.height - height) / 2
	    opacity: 0.3
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }

    
     
    Image {
	id: gear1
	//height: iconSizeLoading
	//width: iconSizeLoading
	smooth: true
	x: -200 + (parent.width - width) / 2 
	y: 35 + (parent.height - height) / 2
	source: "images/gear-1.png"
	opacity: 0.7
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationGear1
            target: gear1
            properties: "rotation"
            from: 0
            to: 360
            duration: 4000
            loops: Animation.Infinite
            running: true
        }
    }

 
    Image {
	id: gear2
	//height: iconSizeLoading
	//width: iconSizeLoading
	smooth: true
	x: -175 + (parent.width - width) / 2 
	y: 100 + (parent.height - height) / 2
	source: "images/gear-2.png"
	opacity: 0.8
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationGear2
            target: gear2
            properties: "rotation"
            from: 360
            to: 0
            duration: 4000
            loops: Animation.Infinite
            running: true
        }
    }    
    Image {
	id: gear3
	//height: iconSizeLoading
	//width: iconSizeLoading
	smooth: true
	x: -200 + (parent.width - width) / 2 
	y: 175 + (parent.height - height) / 2
	source: "images/gear-3.png"
	opacity: 0.7
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationGear3
            target: gear3
            properties: "rotation"
            from: 0
            to: 360
            duration: 4000
            loops: Animation.Infinite
            running: true
        }
    }    
    
   /* 
    Image {
	id: loadingImg
	height: iconSizeLoading
	width: iconSizeLoading
	smooth: true
	x: (parent.width - width) / 2	
	y: (parent.height - height) - 50
	source: "images/gear2.png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationImg
            target: loadingImg
            properties: "rotation"
            from: 360
            to: 0
            duration: 4000
            loops: Animation.Infinite
            running: true
        }
    }*/
    
    
    Text {
	  id: loadingText
            // HTML like markup can also be used
            text: '<font color="#151515">Loading Plasma by <b>KDE</b>...</font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 10

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
	    x: (parent.width - width) / 2
	    y: 205 + (parent.height - height) / 2
	    //y: (parent.height - height) - 100
	    opacity: 0.5
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
      

   /*Text {
	id: textDateTime
	//anchors.centerIn: parent
	//anchors.horizontalCenter: parent.horizontalCenter
        //anchors.baseline: alignRect.bottom
        //anchors.horizontalCenter: parent.horizontalCenter
        //anchors.baseline: main.bottom 
	
        text:Qt.formatDateTime(new Date(), "dd.MM.yy | hh:mm:ss")
	
	font.pointSize: 4
	color: "white"
	font { family: 'Courier'; pixelSize: 12; italic: false; bold:true; capitalization: Font.SmallCaps }

        // StyledText format supports fewer tags, but is more efficient than RichText
        textFormat: Text.StyledText
	x: (parent.width - width) / 2
	//y: 450 + (parent.height - height) / 2
	y: (parent.height - height) - 25
	
    } */

    /* }}} */

    /* stages -----------------------------------------{{{ */

    /* }}} */

    /* transitions ------------------------------------{{{ */

    /* }}} */
}

  
