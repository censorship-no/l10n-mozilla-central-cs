# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


## The main browser window's title

# These are the default window titles everywhere except macOS. The first two
# attributes are used when the web content opened has no title:
#
# default - "Mozilla Firefox"
# private - "Mozilla Firefox (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } (Anonymní prohlížení)
    .data-content-title-default = { $content-title } - { -brand-full-name }
    .data-content-title-private = { $content-title } - { -brand-full-name } (Anonymní prohlížení)
# These are the default window titles on macOS. The first two are for use when
# there is no content title:
#
# "default" - "Mozilla Firefox"
# "private" - "Mozilla Firefox — (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Do not use the brand name in the last two attributes, as we do on non-macOS.
#
# Also note the other subtle difference here: we use a `-` to separate the
# brand name from `(Private Browsing)`, which does not happen on other OSes.
#
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window-mac =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } - (Anonymní prohlížení)
    .data-content-title-default = { $content-title }
    .data-content-title-private = { $content-title } - (Anonymní prohlížení)
# These are the default window titles on macOS. The first two are for use when
# there is no content title:
#
# "default" - "Mozilla Firefox"
# "private" - "Mozilla Firefox — (Private Browsing)"
#
# The last two are for use when there *is* a content title.
# Do not use the brand name in the last two attributes, as we do on non-macOS.
#
# Also note the other subtle difference here: we use a `-` to separate the
# brand name from `(Private Browsing)`, which does not happen on other OSes.
#
# Variables:
#  $content-title (String): the title of the web content.
browser-main-window-mac-window-titles =
    .data-title-default = { -brand-full-name }
    .data-title-private = { -brand-full-name } — anonymní prohlížení
    .data-content-title-default = { $content-title }
    .data-content-title-private = { $content-title } — anonymní prohlížení
# This gets set as the initial title, and is overridden as soon as we start
# updating the titlebar based on loaded tabs or private browsing state.
# This should match the `data-title-default` attribute in both
# `browser-main-window` and `browser-main-window-mac`.
browser-main-window-title = { -brand-full-name }

##

urlbar-identity-button =
    .aria-label = Zobrazit informace o stránce

## Tooltips for images appearing in the address bar

urlbar-services-notification-anchor =
    .tooltiptext = Otevřít instalační panel zpráv
urlbar-web-notification-anchor =
    .tooltiptext = Změní, jestli můžete ze serveru přijímat oznámení
urlbar-midi-notification-anchor =
    .tooltiptext = Otevřít MIDI panel
urlbar-eme-notification-anchor =
    .tooltiptext = Správa využívání softwaru DRM
urlbar-web-authn-anchor =
    .tooltiptext = Otevřít panel webové autentizace
urlbar-canvas-notification-anchor =
    .tooltiptext = Spravovat oprávnění přístupu k informacím canvasu
urlbar-web-rtc-share-microphone-notification-anchor =
    .tooltiptext = Spravovat sdílení mikrofonu se stránkou
urlbar-default-notification-anchor =
    .tooltiptext = Otevře panel zpráv
urlbar-geolocation-notification-anchor =
    .tooltiptext = Otevře panel se žádostmi o polohu
urlbar-xr-notification-anchor =
    .tooltiptext = Otevře panel oprávnění pro virtuální realitu
urlbar-storage-access-anchor =
    .tooltiptext = Otevřít nastavení přístupu k informacím o vašem prohlížení
urlbar-translate-notification-anchor =
    .tooltiptext = Přeloží tuto stránku
urlbar-web-rtc-share-screen-notification-anchor =
    .tooltiptext = Spravovat sdílení oken nebo obrazovky se stránkou
urlbar-indexed-db-notification-anchor =
    .tooltiptext = Otevřít panel zpráv offline úložiště
urlbar-password-notification-anchor =
    .tooltiptext = Otevřít panel zpráv uložení hesla
urlbar-translated-notification-anchor =
    .tooltiptext = Spravovat překlad stránky
urlbar-plugins-notification-anchor =
    .tooltiptext = Správa využití zásuvného modulu
urlbar-web-rtc-share-devices-notification-anchor =
    .tooltiptext = Spravovat sdílení webkamery a/nebo mikrofonu se stránkou
# "Speakers" is used in a general sense that might include headphones or
# another audio output connection.
urlbar-web-rtc-share-speaker-notification-anchor =
    .tooltiptext = Spravovat sdílení zvukového výstupu se stránkou
urlbar-autoplay-notification-anchor =
    .tooltiptext = Otevřít panel automatického přehrávání
urlbar-persistent-storage-notification-anchor =
    .tooltiptext = Uložit data natrvalo
urlbar-addons-notification-anchor =
    .tooltiptext = Otevřít panel zpráv instalace doplňku
urlbar-tip-help-icon =
    .title = Získat pomoc
urlbar-search-tips-confirm = Ok, rozumím
# Read out before Urlbar Tip text content so screenreader users know the
# subsequent text is a tip offered by the browser. It should end in a colon or
# localized equivalent.
urlbar-tip-icon-description =
    .alt = Tip:

## Prompts users to use the Urlbar when they open a new tab or visit the
## homepage of their default search engine.
## Variables:
##  $engineName (String): The name of the user's default search engine. e.g. "Google" or "DuckDuckGo".

urlbar-search-tips-onboard = Méně psaní, více výsledků: používejte { $engineName } přímo z adresního řádku.
urlbar-search-tips-redirect-2 = Zadejte do adresního řádku vyhledávaný text a uvidíte návrhy z vyhledávače { $engineName } a vaší historie prohlížení.
# Prompts users to use the Urlbar when they are typing in the domain of a
# search engine, e.g. google.com or amazon.com.
urlbar-tabtosearch-onboard = Klepněte na tuto zkratku, abyste rychleji našli, co potřebujete.

## Local search mode indicator labels in the urlbar

urlbar-search-mode-bookmarks = Záložky
urlbar-search-mode-tabs = Otevřené panely
urlbar-search-mode-history = Historie prohlížení
urlbar-search-mode-actions = Akce

##

urlbar-geolocation-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali zjišťovat vaši polohu.
urlbar-xr-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali přístup k vašim zařízením pro virtuální realitu.
urlbar-web-notifications-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali zobrazovat oznámení.
urlbar-camera-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali přístup k vaší kameře.
urlbar-microphone-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali přístup k vašemu mikrofonu.
urlbar-screen-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali sdílení vaší obrazovky.
urlbar-persistent-storage-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali ukládání dat natrvalo.
urlbar-popup-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali otevírání vyskakovacích oken.
urlbar-autoplay-media-blocked =
    .tooltiptext = Pro tento server jste zablokovali automatické přehrávání médií se zvukem.
urlbar-canvas-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali přístup k informacím canvasu.
urlbar-midi-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali přístup k MIDI zařízením.
urlbar-install-blocked =
    .tooltiptext = Tomuto serveru jste zablokovali instalaci doplňků.
# Variables
#   $shortcut (String) - A keyboard shortcut for the edit bookmark command.
urlbar-star-edit-bookmark =
    .tooltiptext = Upraví tuto záložku ({ $shortcut })
# Variables
#   $shortcut (String) - A keyboard shortcut for the add bookmark command.
urlbar-star-add-bookmark =
    .tooltiptext = Přidá tuto stránku do záložek ({ $shortcut })

## Page Action Context Menu

page-action-manage-extension =
    .label = Nastavení tohoto rozšíření
page-action-remove-extension =
    .label = Odebrat rozšíření
page-action-manage-extension2 =
    .label = Nastavení tohoto rozšíření…
    .accesskey = e
page-action-remove-extension2 =
    .label = Odebrat rozšíření
    .accesskey = r

## Auto-hide Context Menu

full-screen-autohide =
    .label = Skrýt nástrojové lišty
    .accesskey = S
full-screen-exit =
    .label = Ukončit režim celé obrazovky
    .accesskey = k

## Search Engine selection buttons (one-offs)

# This string prompts the user to use the list of search shortcuts in
# the Urlbar and searchbar.
search-one-offs-with-title = Vyhledat pomocí
search-one-offs-change-settings-compact-button =
    .tooltiptext = Změnit nastavení vyhledávání
search-one-offs-context-open-new-tab =
    .label = Hledat v novém panelu
    .accesskey = n
search-one-offs-context-set-as-default =
    .label = Nastavit jako výchozí vyhledávač
    .accesskey = v
search-one-offs-context-set-as-default-private =
    .label = Nastavit jako výchozí vyhledávač pro anonymní prohlížení
    .accesskey = p
# Search engine one-off buttons with an @alias shortcut/keyword.
# Variables:
#  $engineName (String): The name of the engine.
#  $alias (String): The @alias shortcut/keyword.
search-one-offs-engine-with-alias =
    .tooltiptext = { $engineName } ({ $alias })
# Shown when adding new engines from the address bar shortcut buttons or context
# menu, or from the search bar shortcut buttons.
# Variables:
#  $engineName (String): The name of the engine.
search-one-offs-add-engine =
    .label = Přidat „{ $engineName }“
    .tooltiptext = Přidá vyhledávač „{ $engineName }“
    .aria-label = Přidat vyhledávač „{ $engineName }“
# When more than 5 engines are offered by a web page, they are grouped in a
# submenu using this as its label.
search-one-offs-add-engine-menu =
    .label = Přidat vyhledávač

## Local search mode one-off buttons
## Variables:
##  $restrict (String): The restriction token corresponding to the search mode.
##    Restriction tokens are special characters users can type in the urlbar to
##    restrict their searches to certain sources (e.g., "*" to search only
##    bookmarks).

search-one-offs-bookmarks =
    .tooltiptext = Záložky ({ $restrict })
search-one-offs-tabs =
    .tooltiptext = Otevřené panely ({ $restrict })
search-one-offs-history =
    .tooltiptext = Historie prohlížení ({ $restrict })
search-one-offs-actions =
    .tooltiptext = Akce ({ $restrict })

## QuickActions are shown in the urlbar as the user types a matching string
## The -cmd- strings are comma separated list of keywords that will match
## the action.

# Opens the about:addons page in the home / recommendations section
quickactions-addons = Zobrazit doplňky
# Opens the bookmarks library window
quickactions-bookmarks = Zobrazit záložky
quickactions-cmd-bookmarks = záložky
# Opens a SUMO article explaining how to clear history
quickactions-clearhistory = Vymazat historii
quickactions-cmd-clearhistory = vymazat historii
# Opens about:downloads page
quickactions-downloads = Otevřít seznam stahování
quickactions-cmd-downloads = stahování
# Opens the devtools web inspector
quickactions-inspector = Otevřít průzkumník
quickactions-cmd-inspector = průzkumník, nástroje pro vývojáře, devtools
# Opens about:logins
quickactions-logins = Zobrazit přihlašovací údaje
quickactions-cmd-logins = přihlašovací údaje, hesla
# Opens the print dialog
quickactions-print = Tisk
quickactions-cmd-print = tisk
# Opens a new private browsing window
quickactions-private = Otevřít nové anonymní okno
quickactions-cmd-private = anonymní prohlížení
# Opens a SUMO article explaining how to refresh
quickactions-refresh =
    { -brand-short-name.gender ->
        [masculine] Obnova { -brand-short-name(case: "gen") }
        [feminine] Obnova { -brand-short-name(case: "gen") }
        [neuter] Obnova { -brand-short-name(case: "gen") }
       *[other] Obnova aplikace { -brand-short-name }
    }
quickactions-cmd-refresh = obnova, obnovit
# Restarts the browser
quickactions-restart =
    { -brand-short-name.gender ->
        [masculine] Restartovat { -brand-short-name(case: "acc") }
        [feminine] Restartovat { -brand-short-name(case: "acc") }
        [neuter] Restartovat { -brand-short-name(case: "acc") }
       *[other] Restartovat aplikaci { -brand-short-name }
    }
quickactions-cmd-restart = restart, restartovat
# Opens the screenshot tool
quickactions-screenshot2 = Pořídit snímek stránky
quickactions-cmd-screenshot = snímek obrazovky, stránky
# Opens about:preferences
quickactions-settings = Otevřít nastavení
quickactions-cmd-settings = nastavení, předvolby, možnosti
# Opens a SUMO article explaining how to update the browser
quickactions-update =
    { -brand-short-name.gender ->
        [masculine] Aktualizace { -brand-short-name(case: "gen") }
        [feminine] Aktualizace { -brand-short-name(case: "gen") }
        [neuter] Aktualizace { -brand-short-name(case: "gen") }
       *[other] Aktualizace aplikace { -brand-short-name }
    }
quickactions-cmd-update = aktualizace, aktualizovat
# Opens the view-source UI with current pages source
quickactions-viewsource = Zobrazit zdrojový kód
quickactions-cmd-viewsource = zdrojový kód

## Bookmark Panel

bookmarks-add-bookmark = Přidat záložku
bookmarks-edit-bookmark = Upravit záložku
bookmark-panel-cancel =
    .label = Zrušit
    .accesskey = Z
# Variables:
#  $count (number): number of bookmarks that will be removed
bookmark-panel-remove =
    .label =
        { $count ->
            [one] Odstranit záložku
            [few] Odstranit { $count } záložky
           *[other] Odstranit { $count } záložek
        }
    .accesskey = O
bookmark-panel-show-editor-checkbox =
    .label = Zobrazovat editor při ukládání
    .accesskey = u
bookmark-panel-save-button =
    .label = Uložit
# Width of the bookmark panel.
# Should be large enough to fully display the Done and
# Cancel/Remove Bookmark buttons.
bookmark-panel =
    .style = min-width: 23em

## Identity Panel

# Variables
#  $host (String): the hostname of the site that is being displayed.
identity-site-information = Informace o serveru { $host }
# Variables
#  $host (String): the hostname of the site that is being displayed.
identity-header-security-with-host =
    .title = Zabezpečení spojení se serverem { $host }
identity-connection-not-secure = Spojení není zabezpečené
identity-connection-secure = Zabezpečené spojení
identity-connection-failure = Chyba spojení
identity-connection-internal =
    Toto je zabezpečená stránka { -brand-short-name.gender ->
        [masculine] { -brand-short-name(case: "gen") }
        [feminine] { -brand-short-name(case: "gen") }
        [neuter] { -brand-short-name(case: "gen") }
       *[other] aplikace { -brand-short-name }
    }.
identity-connection-file = Tato stránka je uložena ve vašem počítači.
identity-extension-page = Tato stránka je načtena z doplňku.
identity-active-blocked =
    { -brand-short-name.gender ->
        [masculine] { -brand-short-name } zablokoval
        [feminine] { -brand-short-name } zablokovala
        [neuter] { -brand-short-name } zablokovalo
       *[other] Aplikace { -brand-short-name } zablokovala
    } nezabezpečené části této stránky.
identity-custom-root = Připojení je ověřeno vydavatelem certifikátů, kterého Mozilla nezná.
identity-passive-loaded = Části této stránky nejsou zabezpečené (například obrázky).
identity-active-loaded = Na této stránce jste ochranu zakázali.
identity-weak-encryption = Tento server používá slabé šifrování.
identity-insecure-login-forms = Přihlašovací údaje zadané na této stránce mohou být vyzrazeny.
identity-https-only-connection-upgraded = (přepnuto na HTTPS)
identity-https-only-label = Režim „pouze HTTPS“
identity-https-only-dropdown-on =
    .label = Zapnuto
identity-https-only-dropdown-off =
    .label = Vypnuto
identity-https-only-dropdown-off-temporarily =
    .label = Dočasně vypnuto
identity-https-only-info-turn-on2 =
    Pokud chcete, aby { -brand-short-name.gender ->
        [masculine] { -brand-short-name } přepnul
        [feminine] { -brand-short-name } přepnula
        [neuter] { -brand-short-name } přepnulo
       *[other] aplikace { -brand-short-name } přepnula
    } spojení na HTTPS, kdykoliv je to možné, zapněte pro tento server režim „pouze HTTPS“.
identity-https-only-info-turn-off2 = Pokud se zdá, že je stránka rozbitá, zkuste vypnout režim „pouze HTTPS“, aby se znovu načetla pomocí nezabezpečeného spojení HTTP.
identity-https-only-info-no-upgrade = Nepodařilo se přepnout spojení z HTTP.
identity-permissions-storage-access-header = Cross-site cookies
identity-permissions-storage-access-hint = Tyto weby mohou používat cross-site cookies a během vaší návštěvy této stránky tak přistupovat k jejím datům.
identity-permissions-storage-access-learn-more = Zjistit více
identity-permissions-reload-hint = Pro provedení změn může být potřeba stránku znovu načíst.
identity-clear-site-data =
    .label = Vymazat cookies a data stránky…
identity-connection-not-secure-security-view = Spojení s tímto serverem není zabezpečené.
identity-connection-verified = Spojení s tímto serverem je zabezpečené.
identity-ev-owner-label = Certifikát vydán pro:
identity-description-custom-root = Mozilla tohoto vydavatele certifikátů nezná. Mohl být přidán operačním systémem nebo správcem vašeho počítače. <label data-l10n-name="link">Zjistit více</label>
identity-remove-cert-exception =
    .label = Odstranit výjimku
    .accesskey = O
identity-description-insecure = Vaše připojení k tomuto serveru není soukromé. Informace, které odešlete (jako hesla, zprávy, číslo platební karty atd.), mohou být viděny ostatními.
identity-description-insecure-login-forms = Přihlašovací údaje, které zadáte na této stránce, nebudou zabezpečeny a mohou být vyzrazeny.
identity-description-weak-cipher-intro = Vaše spojení s tímto serverem používá slabé šifrování a není soukromé.
identity-description-weak-cipher-risk = Ostatní lidé mohou vidět vaše informace nebo pozměnit chování stránky.
identity-description-active-blocked =
    { -brand-short-name.gender ->
        [masculine] { -brand-short-name } zablokoval
        [feminine] { -brand-short-name } zablokovala
        [neuter] { -brand-short-name } zablokovalo
       *[other] Aplikace { -brand-short-name } zablokovala
    } nezabezpečené části této stránky. <label data-l10n-name="link">Zjistit více</label>
identity-description-passive-loaded = Vaše připojení není soukromé a informace, které sdílíte s tímto serverem, mohou být viděny ostatními.
identity-description-passive-loaded-insecure = Tato webová stránka obsahuje obsah, který není zabezpečen (například obrázky). <label data-l10n-name="link">Zjistit více</label>
identity-description-passive-loaded-mixed =
    Ačkoli { -brand-short-name.gender ->
        [masculine] { -brand-short-name } zablokoval
        [feminine] { -brand-short-name } zablokovala
        [neuter] { -brand-short-name } zablokovalo
       *[other] aplikace { -brand-short-name } zablokovala
    } nějaký obsah, stránka stále ještě obsahuje nezabezpečený obsah (například obrázky). <label data-l10n-name="link">Zjistit více</label>
identity-description-active-loaded = Tato webová stránka obsahuje obsah, který není zabezpečen (například skripty), a připojení k tomuto serveru tak není soukromé.
identity-description-active-loaded-insecure = Informace, které sdílíte s tímto serverem (jako hesla, zprávy, číslo platební karty, atd.), mohou být viděny ostatními.
identity-learn-more =
    .value = Zjistit více
identity-disable-mixed-content-blocking =
    .label = Vypnout ochranu
    .accesskey = V
identity-enable-mixed-content-blocking =
    .label = Povolit ochranu
    .accesskey = P
identity-more-info-link-text =
    .label = Více informací

## Window controls

browser-window-minimize-button =
    .tooltiptext = Minimalizovat
browser-window-maximize-button =
    .tooltiptext = Maximalizovat
browser-window-restore-down-button =
    .tooltiptext = Obnovit z maximalizace
browser-window-close-button =
    .tooltiptext = Zavřít

## Tab actions

# This label should be written in all capital letters if your locale supports them.
browser-tab-audio-playing2 = PŘEHRÁVÁ
# This label should be written in all capital letters if your locale supports them.
browser-tab-audio-muted2 = ZTLUMENO
# This label should be written in all capital letters if your locale supports them.
browser-tab-audio-blocked = BLOKOVÁNO AUTO. PŘEHRÁVÁNÍ
# This label should be written in all capital letters if your locale supports them.
browser-tab-audio-pip = OBRAZ V OBRAZE

## These labels should be written in all capital letters if your locale supports them.
## Variables:
##  $count (number): number of affected tabs

browser-tab-mute =
    { $count ->
        [1] Vypnout zvuk panelu
        [one] Vypnout zvuk panelu
        [few] Vypnout zvuk { $count } panelů
       *[other] Vypnout zvuk { $count } panelů
    }
browser-tab-unmute =
    { $count ->
        [1] Zapnout zvuk panelu
        [one] Zapnout zvuk panelu
        [few] Zapnout zvuk { $count } panelů
       *[other] Zapnout zvuk { $count } panelů
    }
browser-tab-unblock =
    { $count ->
        [1] Spustit přehrávání
        [one] Spustit přehrávání
        [few] Spustit ve { $count } panelech
       *[other] Spustit v { $count } panelech
    }

## Bookmarks toolbar items

browser-import-button2 =
    .label = Importovat záložky…
    .tooltiptext = Importovat záložky z jiného prohlížeče do { -brand-short-name(case: "gen") }.
bookmarks-toolbar-empty-message = Chcete-li mít ke svým záložkám rychlý přístup, umístěte je sem na lištu záložek. <a data-l10n-name="manage-bookmarks">Spravovat záložky…</a>

## WebRTC Pop-up notifications

popup-select-camera-device =
    .value = Kamera:
    .accesskey = K
popup-select-camera-icon =
    .tooltiptext = Kamera
popup-select-microphone-device =
    .value = Mikrofon:
    .accesskey = M
popup-select-microphone-icon =
    .tooltiptext = Mikrofon
popup-select-speaker-icon =
    .tooltiptext = Zvukový výstup
popup-select-window-or-screen =
    .label = Okno nebo obrazovka:
    .accesskey = O
popup-all-windows-shared = Budou sdílena všechna viditelná okna na vaší obrazovce.
popup-screen-sharing-block =
    .label = Blokovat
    .accesskey = B
popup-screen-sharing-always-block =
    .label = Vždy blokovat
    .accesskey = V
popup-mute-notifications-checkbox = Ztlumit oznámení ze serverů během sdílení

## WebRTC window or screen share tab switch warning

sharing-warning-window = Sdílíte obsah okna { -brand-short-name(case: "gen") }. Ostatní lidé uvidí obsah každého panelu, který otevřete.
sharing-warning-screen = Sdílíte obsah celé své obrazovky. Ostatní lidé uvidí obsah každého panelu, který otevřete.
sharing-warning-proceed-to-tab =
    .label = Otevřít panel
sharing-warning-disable-for-session =
    .label = Zakázat ochranu sdílení pro tuto relaci

## DevTools F12 popup

enable-devtools-popup-description = Pokud chcete používat zkratku F12, otevřete nejprve DevTools z nabídky Nástroje pro vývojáře.

## URL Bar

# This placeholder is used when not in search mode and the user's default search
# engine is unknown.
urlbar-placeholder =
    .placeholder = Zadejte webovou adresu nebo dotaz pro vyhledávač
# This placeholder is used in search mode with search engines that search the
# entire web.
# Variables
#  $name (String): the name of a search engine that searches the entire Web
#  (e.g. Google).
urlbar-placeholder-search-mode-web-2 =
    .placeholder = Vyhledat na webu
    .aria-label = Vyhledat pomocí { $name }
# This placeholder is used in search mode with search engines that search a
# specific site (e.g., Amazon).
# Variables
#  $name (String): the name of a search engine that searches a specific site
#  (e.g. Amazon).
urlbar-placeholder-search-mode-other-engine =
    .placeholder = Zadejte hledaný výraz
    .aria-label = Vyhledat na serveru { $name }
# This placeholder is used when searching bookmarks.
urlbar-placeholder-search-mode-other-bookmarks =
    .placeholder = Zadejte hledaný výraz
    .aria-label = Hledat v záložkách
# This placeholder is used when searching history.
urlbar-placeholder-search-mode-other-history =
    .placeholder = Zadejte hledaný výraz
    .aria-label = Hledat v historii
# This placeholder is used when searching open tabs.
urlbar-placeholder-search-mode-other-tabs =
    .placeholder = Zadejte hledaný výraz
    .aria-label = Hledat v otevřených panelech
# This placeholder is used when searching quick actions.
urlbar-placeholder-search-mode-other-actions =
    .placeholder = Zadejte hledané výrazy
    .aria-label = Vyhledávání akcí
# Variables
#  $name (String): the name of the user's default search engine
urlbar-placeholder-with-name =
    .placeholder = Zadejte webovou adresu nebo dotaz pro vyhledávač { $name }
# Variables
#  $component (String): the name of the component which forces remote control.
#    Example: "DevTools", "Marionette", "RemoteAgent".
urlbar-remote-control-notification-anchor2 =
    .tooltiptext = Prohlížeč je ovládán vzdáleně (pomocí nástroje { $component })
urlbar-permissions-granted =
    .tooltiptext = Tomuto serveru jste udělili dodatečná oprávnění.
urlbar-switch-to-tab =
    .value = Přepnout na panel:
# Used to indicate that a selected autocomplete entry is provided by an extension.
urlbar-extension =
    .value = Rozšíření:
urlbar-go-button =
    .tooltiptext = Přejde na adresu v adresním řádku
urlbar-page-action-button =
    .tooltiptext = Akce stránky

## Action text shown in urlbar results, usually appended after the search
## string or the url, like "result value - action text".

# Used when the private browsing engine differs from the default engine.
# The "with" format was chosen because the search engine name can end with
# "Search", and we would like to avoid strings like "Search MSN Search".
# Variables
#  $engine (String): the name of a search engine
urlbar-result-action-search-in-private-w-engine = Vyhledat v anonymním okně pomocí { $engine }
# Used when the private browsing engine is the same as the default engine.
urlbar-result-action-search-in-private = Vyhledat v anonymním okně
# The "with" format was chosen because the search engine name can end with
# "Search", and we would like to avoid strings like "Search MSN Search".
# Variables
#  $engine (String): the name of a search engine
urlbar-result-action-search-w-engine = Vyhledat pomocí { $engine }
urlbar-result-action-sponsored = Sponzorováno
urlbar-result-action-switch-tab = Přepnout na panel
urlbar-result-action-visit = Navštívit
# Directs a user to press the Tab key to perform a search with the specified
# engine.
# Variables
#  $engine (String): the name of a search engine that searches the entire Web
#  (e.g. Google).
urlbar-result-action-before-tabtosearch-web = Stisknutím klávesy Tab provedete vyhledávání pomocí vyhledávače { $engine }
# Directs a user to press the Tab key to perform a search with the specified
# engine.
# Variables
#  $engine (String): the name of a search engine that searches a specific site
#  (e.g. Amazon).
urlbar-result-action-before-tabtosearch-other = Stisknutím klávesy Tab provedete vyhledávání na webu { $engine }
# Variables
#  $engine (String): the name of a search engine that searches the entire Web
#  (e.g. Google).
urlbar-result-action-tabtosearch-web = Vyhledat pomocí { $engine } přímo z adresního řádku
# Variables
#  $engine (String): the name of a search engine that searches a specific site
#  (e.g. Amazon).
urlbar-result-action-tabtosearch-other-engine = Vyhledat na webu { $engine } přímo z adresního řádku
# Action text for copying to clipboard.
urlbar-result-action-copy-to-clipboard = Kopírovat
# Shows the result of a formula expression being calculated, the last = sign will be shown
# as part of the result (e.g. "= 2").
# Variables
#  $result (String): the string representation for a formula result
urlbar-result-action-calculator-result = = { $result }

## Action text shown in urlbar results, usually appended after the search
## string or the url, like "result value - action text".
## In these actions "Search" is a verb, followed by where the search is performed.

urlbar-result-action-search-bookmarks = Hledat v záložkách
urlbar-result-action-search-history = Hledat v historii
urlbar-result-action-search-tabs = Najít panel
urlbar-result-action-search-actions = Akce vyhledávání

## Labels shown above groups of urlbar results

# A label shown above the "Firefox Suggest" (bookmarks/history) group in the
# urlbar results.
urlbar-group-firefox-suggest =
    .label = { -firefox-suggest-brand-name }
# A label shown above the search suggestions group in the urlbar results. It
# should use sentence case.
# Variables
#  $engine (String): the name of the search engine providing the suggestions
urlbar-group-search-suggestions =
    .label = Návrhy vyhledávače { $engine }
# A label shown above Quick Actions in the urlbar results.
urlbar-group-quickactions =
    .label = Rychlé akce

## Reader View toolbar buttons

# This should match menu-view-enter-readerview in menubar.ftl
reader-view-enter-button =
    .aria-label = Zapnout zobrazení čtečky
# This should match menu-view-close-readerview in menubar.ftl
reader-view-close-button =
    .aria-label = Zavřít zobrazení čtečky

## Full Screen and Pointer Lock UI

# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is full screen, e.g. "mozilla.org"
fullscreen-warning-domain = <span data-l10n-name="domain">{ $domain }</span> je teď v režimu celé obrazovky
fullscreen-warning-no-domain = Tento dokument je teď v režimu celé obrazovky
fullscreen-exit-button = Ukončit režim celé obrazovky (Esc)
# "esc" is lowercase on mac keyboards, but uppercase elsewhere.
fullscreen-exit-mac-button = Ukončit režim celé obrazovky (esc)
# Please ensure that the domain stays in the `<span data-l10n-name="domain">` markup.
# Variables
#  $domain (String): the domain that is using pointer-lock, e.g. "mozilla.org"
pointerlock-warning-domain = <span data-l10n-name="domain">{ $domain }</span> má kontrolu nad vaším kurzorem. Pro odebrání kontroly stiskněte klávesu Esc.
pointerlock-warning-no-domain = Tento dokument má kontrolu nad vaším kurzorem. Pro odebrání kontroly stiskněte klávesu Esc.

## Subframe crash notification

crashed-subframe-message =
    <strong>Část této stránky spadla.</strong> Pokud chcete autorům { -brand-shorter-name.gender ->
        [masculine] { -brand-product-name(case: "gen") }
        [feminine] { -brand-product-name(case: "gen") }
        [neuter] { -brand-product-name(case: "gen") }
       *[other] aplikace { -brand-product-name }
    } tento problém nahlásit pro zrychlení opravy, odešlete prosím hlášení.
# The string for crashed-subframe-title.title should match crashed-subframe-message,
# but without any markup.
crashed-subframe-title =
    .title =
        Část této stránky spadla. Pokud chcete autorům { -brand-product-name.gender ->
            [masculine] { -brand-product-name(case: "gen") }
            [feminine] { -brand-product-name(case: "gen") }
            [neuter] { -brand-product-name(case: "gen") }
           *[other] aplikace { -brand-product-name }
        } tento problém nahlásit pro zrychlení opravy, odešlete prosím hlášení.
crashed-subframe-learnmore-link =
    .value = Zjistit více
crashed-subframe-submit =
    .label = Odeslat hlášení
    .accesskey = d

## Bookmarks panels, menus and toolbar

bookmarks-manage-bookmarks =
    .label = Správa záložek
bookmarks-recent-bookmarks-panel-subheader = Naposledy přidané
bookmarks-toolbar-chevron =
    .tooltiptext = Zobrazí více záložek
bookmarks-sidebar-content =
    .aria-label = Záložky
bookmarks-menu-button =
    .label = Nabídka záložek
bookmarks-other-bookmarks-menu =
    .label = Ostatní záložky
bookmarks-mobile-bookmarks-menu =
    .label = Záložky z mobilu
bookmarks-tools-sidebar-visibility =
    .label =
        { $isVisible ->
            [true] Skrýt postranní lištu záložek
           *[other] Zobrazit v postranní liště
        }
bookmarks-tools-toolbar-visibility-menuitem =
    .label =
        { $isVisible ->
            [true] Skrýt lištu záložek
           *[other] Zobrazit lištu záložek
        }
bookmarks-tools-toolbar-visibility-panel =
    .label =
        { $isVisible ->
            [true] Skrýt lištu záložek
           *[other] Zobrazit lištu záložek
        }
bookmarks-tools-menu-button-visibility =
    .label =
        { $isVisible ->
            [true] Odebrat nabídku záložek z lišty
           *[other] Přidat nabídku záložek na lištu
        }
bookmarks-search =
    .label = Hledat v záložkách
bookmarks-tools =
    .label = Nástroje pro práci se záložkami
bookmarks-bookmark-edit-panel =
    .label = Upravit záložku
bookmarks-subview-edit-bookmark =
    .label = Upravit záložku…
# The aria-label is a spoken label that should not include the word "toolbar" or
# such, because screen readers already know that this container is a toolbar.
# This avoids double-speaking.
bookmarks-toolbar =
    .toolbarname = Lišta záložek
    .accesskey = z
    .aria-label = Záložky
bookmarks-toolbar-menu =
    .label = Lišta záložek
bookmarks-toolbar-placeholder =
    .title = Záložky nástrojové lišty
bookmarks-toolbar-placeholder-button =
    .label = Záložky nástrojové lišty
# "Bookmark" is a verb, as in "Add current tab to bookmarks".
bookmarks-current-tab =
    .label = Přidat současný panel do záložek
# "Bookmark" is a verb, as in "Add current tab to bookmarks".
bookmarks-subview-bookmark-tab =
    .label = Přidat současný panel do záložek…

## Library Panel items

library-bookmarks-menu =
    .label = Záložky
library-recent-activity-title =
    .value = Nedávná aktivita

## Pocket toolbar button

save-to-pocket-button =
    .label = Uložit do { -pocket-brand-name(case: "gen") }
    .tooltiptext = Uloží stránku do { -pocket-brand-name(case: "gen") }

## Repair text encoding toolbar button

repair-text-encoding-button =
    .label = Opravit znakovou sadu textu
    .tooltiptext = Na základě obsahu stránky odhadne správnou znakovou sadu textu

## Customize Toolbar Buttons

# Variables:
#  $shortcut (String): keyboard shortcut to open the add-ons manager
toolbar-addons-themes-button =
    .label = Doplňky a vzhledy
    .tooltiptext = Správa doplňků a motivů vzhledu ({ $shortcut })
# Variables:
#  $shortcut (String): keyboard shortcut to open settings (only on macOS)
toolbar-settings-button =
    .label = Nastavení
    .tooltiptext =
        { PLATFORM() ->
            [macos] Otevře nastavení ({ $shortcut })
           *[other] Otevře nastavení
        }
toolbar-overflow-customize-button =
    .label = Nastavení tlačítek a lišt…
    .accesskey = V
toolbar-button-email-link =
    .label = Poslat odkaz e-mailem
    .tooltiptext = Odešle odkaz na aktuální stránku
# Variables:
#  $shortcut (String): keyboard shortcut to save a copy of the page
toolbar-button-save-page =
    .label = Uložit stránku
    .tooltiptext = Uloží aktuální stránku ({ $shortcut })
# Variables:
#  $shortcut (String): keyboard shortcut to open a local file
toolbar-button-open-file =
    .label = Otevřít soubor
    .tooltiptext = Otevře soubor ({ $shortcut })
toolbar-button-synced-tabs =
    .label = Synchronizované panely
    .tooltiptext = Zobrazí panely z jiných zařízení
# Variables
# $shortcut (string) - Keyboard shortcut to open a new private browsing window
toolbar-button-new-private-window =
    .label = Nové anonymní okno
    .tooltiptext = Otevře nové anonymní okno ({ $shortcut })

## EME notification panel

eme-notifications-drm-content-playing =
    Některé zvuky nebo videa na této stránce používají DRM software, což může omezit { -brand-short-name.gender ->
        [masculine] { -brand-short-name(case: "acc") }
        [feminine] { -brand-short-name(case: "acc") }
        [neuter] { -brand-short-name(case: "acc") }
       *[other] aplikaci { -brand-short-name }
    } při práci s tímto obsahem.
eme-notifications-drm-content-playing-manage = Nastavení
eme-notifications-drm-content-playing-manage-accesskey = N
eme-notifications-drm-content-playing-dismiss = Zavřít
eme-notifications-drm-content-playing-dismiss-accesskey = Z

## Password save/update panel

panel-save-update-username = Uživatelské jméno
panel-save-update-password = Heslo

## Add-on removal warning

# Variables:
#  $name (String): The name of the addon that will be removed.
addon-removal-title = Opravdu chcete odebrat rozšíření { $name }?
addon-removal-abuse-report-checkbox =
    Nahlásit toto rozšíření { -vendor-short-name.gender ->
        [masculine] { -vendor-short-name(case: "dat") }
        [feminine] { -vendor-short-name(case: "dat") }
        [neuter] { -vendor-short-name(case: "dat") }
       *[other] organizaci { -vendor-short-name }
    }

##

# "More" item in macOS share menu
menu-share-more =
    .label = Více…
ui-tour-info-panel-close =
    .tooltiptext = Zavřít

## Variables:
##  $uriHost (String): URI host for which the popup was allowed or blocked.

popups-infobar-allow =
    .label = Povolit vyskakovací okna pro { $uriHost }
    .accesskey = P
popups-infobar-block =
    .label = Blokovat vyskakovací okna pro { $uriHost }
    .accesskey = p

##

popups-infobar-dont-show-message =
    .label = Při blokování vyskakovacích oken nezobrazovat tuto zprávu
    .accesskey = n
edit-popup-settings =
    .label = Spravovat nastavení vyskakovacích oken…
    .accesskey = y
picture-in-picture-hide-toggle =
    .label = Skrýt přepínač obrazu v obraze
    .accesskey = v

## Since the default position for PiP controls does not change for RTL layout,
## right-to-left languages should use "Left" and "Right" as in the English strings,

picture-in-picture-move-toggle-right =
    .label = Přesunout přepínač zobrazení obrazu v obraze doprava
    .accesskey = r
picture-in-picture-move-toggle-left =
    .label = Přesunout přepínač zobrazení obrazu v obraze doleva
    .accesskey = l

##


# Navigator Toolbox

# This string is a spoken label that should not include
# the word "toolbar" or such, because screen readers already know that
# this container is a toolbar. This avoids double-speaking.
navbar-accessible =
    .aria-label = Navigace
navbar-downloads =
    .label = Stahování
navbar-overflow =
    .tooltiptext = Další nástroje…
# Variables:
#   $shortcut (String): keyboard shortcut to print the page
navbar-print =
    .label = Vytisknout
    .tooltiptext = Vytiskne tuto stránku… ({ $shortcut })
navbar-home =
    .label = Domů
    .tooltiptext =
        Otevře domovskou stránku { -brand-short-name.gender ->
            [masculine] { -brand-short-name(case: "gen") }
            [feminine] { -brand-short-name(case: "gen") }
            [neuter] { -brand-short-name(case: "gen") }
           *[other] aplikace { -brand-short-name }
        }
navbar-library =
    .label = Knihovna stránek
    .tooltiptext = Zobrazí historii, uložené záložky, a mnoho dalšího
navbar-search =
    .title = Vyhledávací pole
navbar-accessibility-indicator =
    .tooltiptext = Funkce pro podporu přístupnosti povoleny
# Name for the tabs toolbar as spoken by screen readers. The word
# "toolbar" is appended automatically and should not be included in
# in the string
tabs-toolbar =
    .aria-label = Ouška panelů
tabs-toolbar-new-tab =
    .label = Nový panel
tabs-toolbar-list-all-tabs =
    .label = Seznam všech panelů
    .tooltiptext = Seznam všech panelů

## Infobar shown at startup to suggest session-restore

# <img data-l10n-name="icon"/> will be replaced by the application menu icon
restore-session-startup-suggestion-message =
    <strong>Chcete otevřít předchozí panely?</strong> Předchozí relaci { -brand-short-name.gender ->
        [masculine] { -brand-short-name(case: "gen") }
        [feminine] { -brand-short-name(case: "gen") }
        [neuter] { -brand-short-name(case: "gen") }
       *[other] aplikace { -brand-short-name }
    } můžete obnovit z nabídky <img data-l10n-name="icon"/> v části Historie.
restore-session-startup-suggestion-button = Jak na to

## Mozilla data reporting notification (Telemetry, Firefox Health Report, etc)

data-reporting-notification-message =
    { -vendor-short-name.gender ->
        [masculine] { -brand-short-name } automaticky odesílá některá data { -vendor-short-name(case: "dat") } z důvodu vylepšení vašeho prohlížení.
        [feminine] { -brand-short-name } automaticky odesílá některá data { -vendor-short-name(case: "dat") } z důvodu vylepšení vašeho prohlížení.
        [neuter] { -brand-short-name } automaticky odesílá některá data { -vendor-short-name(case: "dat") } z důvodu vylepšení vašeho prohlížení.
       *[other] { -brand-short-name } automaticky odesílá některá data organizaci { -vendor-short-name } z důvodu vylepšení vašeho prohlížení.
    }
data-reporting-notification-button =
    .label = Nastavit odesílaná data
    .accesskey = N
# Label for the indicator shown in the private browsing window titlebar.
private-browsing-indicator-label = Anonymní prohlížení

## Unified extensions (toolbar) button

unified-extensions-button =
    .label = Rozšíření
    .tooltiptext = Rozšíření

## Autorefresh blocker

refresh-blocked-refresh-label =
    { -brand-short-name.gender ->
        [masculine] { -brand-short-name } zabránil této stránce v automatickém opětovném načtení.
        [feminine] { -brand-short-name } zabránila této stránce v automatickém opětovném načtení.
        [neuter] { -brand-short-name } zabránilo této stránce v automatickém opětovném načtení.
       *[other] Aplikace { -brand-short-name } zabránila této stránce v automatickém opětovném načtení.
    }
refresh-blocked-redirect-label =
    { -brand-short-name.gender ->
        [masculine] { -brand-short-name } zabránil této stránce v automatickém přesměrování na jinou stránku.
        [feminine] { -brand-short-name } zabránila této stránce v automatickém přesměrování na jinou stránku.
        [neuter] { -brand-short-name } zabránilo této stránce v automatickém přesměrování na jinou stránku.
       *[other] Aplikace { -brand-short-name } zabránila této stránce v automatickém přesměrování na jinou stránku.
    }
refresh-blocked-allow =
    .label = Povolit
    .accesskey = P
