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

    	    logo.opacity = 1
	    textKDESC.opacity = 1

	    textDateTime.opacity = 0.3
	    folder.opacity = 0.1
	    video.opacity = 0.1
            music.opacity = 0.1
            images.opacity = 0.1
            storage.opacity = 0.1
            
	    loadingImg.opacity = 1
	    loadingText.opacity = 1
	    message.opacity = 0.3
	    freedom.opacity = 1
	    gear1.opacity = 1
	    gear2.opacity = 0.4
	    50
        }
        if (stage == 2) {	    
	    textKDESC.opacity = 0.5

	    folder.opacity = 1

    	    loadingText.opacity = 0.2
    	    message.opacity = 1
	    freedom.opacity = 0.3
	    kde.opacity = 1
	    video.opacity = 0.3
	    
	    logo.opacity = 1
	    gear2.opacity = 0.3

        }
        if (stage == 3) {
	    textKDESC.opacity = 1
            
       	    loadingText.opacity = 1
       	    message.opacity = 0.3
	    freedom.opacity = 1
	    
	    folder.opacity = 1
            video.opacity = 1
            music.opacity = 0.3
	    
	    logo.opacity = 1
	    gear2.opacity = 0.5
	    
        }
        if (stage == 4) {
	    textKDESC.opacity = 0.5
            
	    loadingText.opacity = 0.3
	    message.opacity = 1
	    freedom.opacity = 0.3
	    
	    folder.opacity = 1
            video.opacity = 1
            music.opacity = 1
            images.opacity = 0.3
            
	    logo.opacity = 1
	    gear2.opacity = 0.3
	    
        }
        if (stage == 5) {
	    textKDESC.opacity = 1
	    
	    loadingText.opacity = 1
	    message.opacity = 0.3
	    freedom.opacity = 1
	    
	    folder.opacity = 1
            video.opacity = 1
            music.opacity = 1
            images.opacity = 1
            storage.opacity = 0.3
            
	    logo.opacity = 1
	    gear2.opacity = 0.5
        }
        if (stage == 6) {
	    textKDESC.opacity = 1
	    
	    loadingText.opacity = 0.3
	    message.opacity = 1
	    freedom.opacity = 1
	    
	    folder.opacity = 1
            video.opacity = 1
            music.opacity = 1
            images.opacity = 1
            storage.opacity = 1
            
	    logo.opacity = 1
	    gear2.opacity = 0.3

        }
        if (stage == 7) {
	    textKDESC.opacity = 1
	    
	    loadingText.opacity = 1
	    message.opacity = 1
	    freedom.opacity = 0.3
	    
	    folder.opacity = 1
            video.opacity = 1
            music.opacity = 1
            images.opacity = 1
            storage.opacity = 1
	    
	    logo.opacity = 1
	    gear2.opacity = 0.5

        }
    }
    
//     //  OPACITY ANIMATION WHILE IS LOADING END!
// 
// BACKGROUND IMAGE
    Image {
        id: background
	source: "images/nitrux.png"
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
	id: logo
	//height: iconSizeGear
	//width: iconSizeGear
	smooth: true
	x: -160 + (parent.width - width) / 2
	y: -130 + (parent.height - height) / 2
	source: "images/kde-small-plasma.png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
//         NumberAnimation {
//             id: animateRotation
//             target: logo
//             properties: "rotation"
//             from: 0
//             to: 360
//             duration: 5000
//             loops: Animation.Infinite
//             running: true
//         }
    }

   Image {
	id: gear3
	height: iconSizeLoading
	width: iconSizeLoading
	smooth: true
	x: 116 + (parent.width - width) / 2 
	y: -75 + (parent.height - height) / 2
	source: "images/gear3.png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationGear3
            target: gear3
            properties: "rotation"
            from: 0
            to: 360
            duration: 1000
            loops: Animation.Infinite
            running: true
        }
    }

    
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
    }
    
    Image {
	id: loadingGear
	height: iconSizeLoading
	width: iconSizeLoading
	smooth: true
	x: (parent.width - width) / 2	
	y: (parent.height - height) - 50
	
	source: "images/kdegear.png"
	opacity: 1
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
        NumberAnimation {
            id: animateRotationGear
            target: loadingGear
            properties: "rotation"
            from: 0
            to: 360
            duration: 4000
            loops: Animation.Infinite
            running: true
        }
    }
    
    Image {
	id: folder
	height: iconSize
	width: iconSize
	smooth: true
	x: -150 + (parent.width - width) / 2
	y: (parent.height - height) / 2
	source: "images/folder.png"
	opacity: 0
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
	id: video
	height: iconSize
	width: iconSize
	smooth: true
	x: -75 + (parent.width - width) / 2 
	y: (parent.height - height) / 2
	source: "images/video.png"
	opacity: 0
	Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } } 
    }
    
    Image {
	id: music
	height: iconSize
	width: iconSize
	smooth: true
	x: (parent.width - width) / 2 
	y: (parent.height - height) / 2
	source: "images/music.png"
        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    Image {
	id: images
	height: iconSize
	width: iconSize
	smooth: true
	x: 75 + (parent.width - width) / 2 
	y: (parent.height - height) / 2
	source: "images/images.png"
        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
	id: storage
	height: iconSize
	width: iconSize
	smooth: true
	x: 150 + (parent.width - width) / 2 
	y: (parent.height - height) / 2
	source: "images/storage.png"
        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    } 
    
    
    Text {
	  id: loadingText
            // HTML like markup can also be used
            text: '<font color="white"><b>L</b>oading Plasma by <b>KDE</b>...</font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 10

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
	    x: (parent.width - width) / 2
	    //y: 450 + (parent.height - height) / 2
	    y: (parent.height - height) - 100
	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
     
     
     Text {
	  id: message
            // HTML like markup can also be used
            text: '<font color="white">Welcome to Plasma by <b>KDE,</b> the most Modern Desktop Environment.</font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 14

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: (parent.width - width) / 2 
	    y: 100 + (parent.height - height) / 2
	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
    Text {
	  id: freedom
            // HTML like markup can also be used
            text: '<font color="white"><i>¡Experience Freedom!</i></font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 14

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            x: (parent.width - width) / 2 
	    y: 120 + (parent.height - height) / 2
	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }

     }
     Text {
	  id: textKDE
            // HTML like markup can also be used
	     text: '<font color="white"><b>DE</b></font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 90

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            
	    x: -10 + (parent.width - width) / 2 
	    y: -145 + (parent.height - height) / 2
 	    opacity: 0.7
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
     }
     
     Text {
	  id: textKDESC
            // HTML like markup can also be used
	     text: '<font color="white"><b>P</b> l a s m a  <b>N</b> e x t</font>'

            // This could also be written font { pointSize: 14 }. Both syntaxes are valid.
            font.pointSize: 27

            // StyledText format supports fewer tags, but is more efficient than RichText
            textFormat: Text.StyledText
            
	    x: 60 + (parent.width - width) / 2 
	    y: -75 + (parent.height - height) / 2
 	    opacity: 1
	    Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
     }
     
      

   Text {
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
	
    } 

    /* }}} */

    /* stages -----------------------------------------{{{ */

    /* }}} */

    /* transitions ------------------------------------{{{ */

    /* }}} */
}

  
