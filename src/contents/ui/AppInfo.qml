/**
 * Crypto Tracker widget for KDE
 *
 * @author    Marcin Orlowski <mail (#) marcinOrlowski (.) com>
 * @copyright 2021 Marcin Orlowski
 * @license   http://www.opensource.org/licenses/mit-license.php MIT
 * @link      https://github.com/MarcinOrlowski/crypto-tracker-plasmoid
 */

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.3
import org.kde.plasma.components 3.0 as PlasmaComponents
import "../js/meta.js" as Meta

ColumnLayout {
	id: aboutMainContainer

	anchors.centerIn: parent
	Layout.fillWidth: true
	Layout.fillHeight: true
	Layout.margins: 30

	Image {
		id: aboutLogo
		Layout.alignment: Qt.AlignHCenter
		fillMode: Image.PreserveAspectFit
		source: "../images/logo.png"
	}

	// metadata access is not available until very recent Plasma
	// so as a work around we have it auto-generated as JS file
	PlasmaComponents.Label {
		Layout.alignment: Qt.AlignHCenter
		textFormat: Text.PlainText
		font.bold: true
		font.pixelSize: Qt.application.font.pixelSize * 1.5
		text: Meta.title + ' v' + Meta.version
	}

	CopyrightLabel {
		Layout.alignment: Qt.AlignHCenter
	}

	Item {
		height: 20
	}

	ClickableLabel {
		Layout.alignment: Qt.AlignHCenter
		text: i18n('Visit <u>project page</u> on Github')
		url: Meta.url
	}

} // aboutMainContainer
