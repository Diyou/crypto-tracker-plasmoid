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
	property alias cfg_exchange1: exchange.exchange
	property alias cfg_crypto1: exchange.crypto
	property alias cfg_fiat1: exchange.fiat
	property alias cfg_refreshRate1: exchange.refreshRate
	property alias cfg_hidePriceDecimals1: exchange.hidePriceDecimals
	property alias cfg_useCustomLocale1: exchange.useCustomLocale
	property alias cfg_customLocaleName1: exchange.customLocaleName

	ExchangeConfig {
		id: exchange

		exchange: cfg_exchange1
		crypto: cfg_crypto1
		fiat: cfg_fiat1
		refreshRate: cfg_refreshRate1
		hidePriceDecimals: cfg_hidePriceDecimals1
		useCustomLocale: cfg_useCustomLocale1
		customLocaleName: cfg_customLocaleName1
	}
}