
import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }
            Label {
                x: Theme.paddingLarge
                text: qsTr("Hello Sailors")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Label
            {
                id: wassup
                x: Theme.paddingLarge
                text: "nothing, having a bud"
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }

        ListView
        {
            id: parameters
            width: parent.width
            height: 6*Theme.itemSizeMedium
            clip: true

            VerticalScrollDecorator { flickable: parameters }
            model: parameterList
            anchors.top: column.bottom

            delegate:

                Column
                {
                    width: parent.width
                    height: Theme.itemSizeMedium + contextbuttons.height
                    spacing: 0

                    Label
                    {
                        x: Theme.paddingLarge

                        text: name
                        width: parent.width
                        height: Theme.itemSizeMedium

                        BackgroundItem
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                contextbuttons.opened = !contextbuttons.opened
                            }
                        }
                    }

                    Row
                    {
                        id: contextbuttons
                        property bool opened: false
                        height: opened ? Theme.itemSizeMedium : 0
                        clip: true

                        Behavior on height
                        {
                            NumberAnimation { duration: 250 }
                        }
                        width: parent.width

                        IconButton
                        {
                            icon.source: "image://theme/icon-l-shuffle"
                            onClicked:
                            {
                                wassup.text = "shuffling " + name
                                contextbuttons.opened = false
                            }
                        }
                        IconButton
                        {
                            icon.source: "image://theme/icon-l-repeat"
                            onClicked:
                            {
                                wassup.text = "repeating " + name
                                contextbuttons.opened = false
                            }
                        }
                        IconButton
                        {
                            icon.source: "image://theme/icon-l-share"
                            onClicked:
                            {
                                wassup.text = "sharing " + name
                                contextbuttons.opened = false
                            }
                        }
                    }
                }

            }

        ListModel
        {
            id: parameterList
            ListElement { name: "kissa" }
            ListElement { name: "koira" }
            ListElement { name: "koala" }
            ListElement { name: "apina" }
        }
    }
}



