/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background1
            source: "welcome-1.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
 	    anchors.centerIn: parent
        }

    }


    Slide {

        Image {
            id: background3
            source: "welcome-2.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background4
            source: "welcome-3.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
	    anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background5
            source: "welcome-4.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background6
            source: "welcome-5.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
	    anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background7
            source: "welcome-6.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
	    anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background8
            source: "welcome-8.png"
            width: 472; height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
	Text {
            anchors.horizontalCenter: background8.horizontalCenter
            anchors.top: background8.bottom
            text: "Wallpapers<br/>"+
                  "DarkOs Has A Collection Of Decent Wallpapers.<br/>"+
                  "Inspired By The Witcher Series."
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center

	}

    }

    Slide {

        Image {
            id: background9
            source: "welcome-7.png"
            width: 472; height: 300
            fillMode: Image.PreserveAspectFit
	    anchors.centerIn: parent
        }
	Text {
            anchors.horizontalCenter: background9.horizontalCenter
            anchors.top: background9.bottom
            text: "Community<br/>"+
                  "DarkOs Is A Community Guided OS .<br/>"+
                  "Wanna Improve DarkOs Join The Community."
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center

        }


    }

    Slide {

        Image {
            id: background10
            source: "welcome-9.png"
            width: 800; height: 450
            fillMode: Image.PreserveAspectFit
	    anchors.centerIn: parent
        }
	Text {
            anchors.horizontalCenter: background10.horizontalCenter
            anchors.top: background10.bottom
            text: "Editions<br/>"+
                  "DarkOs Has 3 Edition.<br/>"+
                  "One Hell - Soopertrack - Schmedding "
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center

        }


    }

    Slide {

        Image {
            id: background11
            source: "welcome-10.png"
            width: 472; height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
	Text {
            anchors.horizontalCenter: background11.horizontalCenter
            anchors.top: background11.bottom
            text: "Enjoy Using GNU/Linux<br/>"+
                  "That's DarkOs Goal.<br/>"
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center

        }


    }
    function onActivate() {
          console.log("QML Component (default slideshow) activated");
          presentation.currentSlide = 0;
    }

    function onLeave() {
          console.log("QML Component (default slideshow) deactivated");
    }

}
