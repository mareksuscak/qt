load(qttest_p4)
QT = core
contains(QT_CONFIG,dbus): {
	SOURCES += tst_qdbusmetaobject.cpp
	QT += dbus
} else {
	SOURCES += ../qdbusmarshall/dummy.cpp
}

macx:CONFIG += insignificant_test # QTBUG-37469
