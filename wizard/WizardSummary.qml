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
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0
import ArqmaComponents.NetworkType 1.0

import "../js/Wizard.js" as Wizard
import "../js/Utils.js" as Utils
import "../components" as ArqmaComponents

ColumnLayout {
    spacing: 0
    Layout.maximumWidth: wizardController.wizardSubViewWidth

    GridLayout {
        columns: 2
        columnSpacing: 0

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Wallet name") + translationManager.emptyString
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            Layout.maximumWidth: 360
            font.pixelSize: 14
            text: walletOptionsName
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }


        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Wallet path") + translationManager.emptyString
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            Layout.maximumWidth: 360
            font.pixelSize: 14
            text: walletOptionsLocation
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Language") + translationManager.emptyString
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            Layout.maximumWidth: 360
            font.pixelSize: 14
            text: wizardController.language_language
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        Rectangle {
            visible: persistentSettings.remoteNodeAddress !== ""
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        ArqmaComponents.TextBlock {
            visible: persistentSettings.remoteNodeAddress !== ""
            Layout.fillWidth: true
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Daemon address") + translationManager.emptyString
        }

        ArqmaComponents.TextBlock {
            visible: persistentSettings.remoteNodeAddress !== ""
            Layout.fillWidth: true
            Layout.maximumWidth: 360
            font.pixelSize: 14
            text: persistentSettings.remoteNodeAddress
        }

        Rectangle {
            visible: persistentSettings.remoteNodeAddress !== ""
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Network Type") + translationManager.emptyString
        }

        ArqmaComponents.TextBlock {
            Layout.fillWidth: true
            Layout.maximumWidth: 360
            font.pixelSize: 14
            text: Utils.netTypeToString()
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }

        Rectangle {
            height: 1
            Layout.topMargin: 2 * scaleRatio
            Layout.bottomMargin: 2 * scaleRatio
            Layout.fillWidth: true
            color: ArqmaComponents.Style.dividerColor
            opacity: ArqmaComponents.Style.dividerOpacity
        }
    }
}
