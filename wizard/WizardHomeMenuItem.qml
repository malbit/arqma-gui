// Copyright (c) 2014-2019, The Monero Project
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification, are
// permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this list of
//    conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice, this list
//    of conditions and the following disclaimer in the documentation and/or other
//    materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its contributors may be
//    used to endorse or promote products derived from this software without specific
//    prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
// THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import QtQuick 2.7
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0

import "../components" as ArqmaComponents

ColumnLayout {
    id: root
    spacing: 0

    Layout.fillWidth: true
    Layout.preferredHeight: 80 * scaleRatio
    property alias imageIcon: icon.source
    property alias headerText: header.text
    property alias bodyText: body.text
    signal menuClicked();

    RowLayout {
        Layout.preferredWidth: parent.width
        Layout.preferredHeight: 70 * scaleRatio
        spacing: 0

        Item {
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredWidth: 60 * scaleRatio
            Layout.preferredHeight: parent.height

            Image {
                id: icon
                height: 60 * scaleRatio
                width: 60 * scaleRatio
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
            }
        }

        ColumnLayout {
            spacing: 4 * scaleRatio

            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 60 * scaleRatio

            Text {
                id: header
                Layout.leftMargin: 16 * scaleRatio
                Layout.topMargin: 0
                Layout.preferredHeight: parent.height / 2
                Layout.preferredWidth: parent.width
                topPadding: 4 * scaleRatio
                color: ArqmaComponents.Style.defaultFontColor
                font.bold: true
                font.family: ArqmaComponents.Style.fontRegular.name
                font.pixelSize: {
                    if(wizardController.layoutScale === 2 ){
                        return 22 * scaleRatio;
                    } else {
                        return 20 * scaleRatio;
                    }
                }
            }

            Text {
                id: body
                Layout.leftMargin: 16 * scaleRatio
                Layout.preferredHeight: parent.height / 2
                Layout.preferredWidth: parent.width
                font.family: ArqmaComponents.Style.fontRegular.name
                color: ArqmaComponents.Style.dimmedFontColor
                font.pixelSize: {
                    if(wizardController.layoutScale === 2 ){
                        return 16 * scaleRatio;
                    } else {
                        return 14 * scaleRatio;
                    }
                }
            }
        }

        MouseArea {
            cursorShape: Qt.PointingHandCursor
            anchors.fill: parent
            onClicked: {
                root.menuClicked();
            }
        }
    }

    Rectangle {
        Layout.topMargin: 10 * scaleRatio
        Layout.bottomMargin: 10 * scaleRatio
        Layout.preferredHeight: 1
        Layout.preferredWidth: parent.width
        color: ArqmaComponents.Style.dividerColor
        opacity: ArqmaComponents.Style.dividerOpacity
    }
}
