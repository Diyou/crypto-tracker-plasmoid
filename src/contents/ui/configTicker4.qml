/**
 * Crypto Ticker widget for KDE
 *
 * @author    Marcin Orlowski <mail (#) marcinOrlowski (.) com>
 * @copyright 2021 Marcin Orlowski
 * @license   http://www.opensource.org/licenses/mit-license.php MIT
 * @link      https://github.com/MarcinOrlowski/crypto-plasmoid
 */

import QtQuick 2.0

Item {
	property alias cfg_running4: exchange.running
	property alias cfg_exchange4: exchange.exchange
	property alias cfg_crypto4: exchange.crypto
	property alias cfg_fiat4: exchange.fiat
	property alias cfg_refreshRate4: exchange.refreshRate
	property alias cfg_hidePriceDecimals4: exchange.hidePriceDecimals
	property alias cfg_useCustomLocale4: exchange.useCustomLocale
	property alias cfg_customLocaleName4: exchange.customLocaleName

	ExchangeConfig {
		id: exchange
	}
}