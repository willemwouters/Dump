#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './configconnectiondlglayout.ui'
**
** Created: Fri Apr 22 02:28:44 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "configconnectiondlglayout.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qtabwidget.h>
#include <qgroupbox.h>
#include <qcheckbox.h>
#include <qlabel.h>
#include <qlineedit.h>
#include <qspinbox.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a KonferenceConfigConnectionDlgLayout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
KonferenceConfigConnectionDlgLayout::KonferenceConfigConnectionDlgLayout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "KonferenceConfigConnectionDlgLayout" );
    KonferenceConfigConnectionDlgLayoutLayout = new QGridLayout( this, 1, 1, 11, 6, "KonferenceConfigConnectionDlgLayoutLayout"); 

    tabWidget2 = new QTabWidget( this, "tabWidget2" );

    tab = new QWidget( tabWidget2, "tab" );
    tabLayout = new QGridLayout( tab, 1, 1, 11, 6, "tabLayout"); 

    groupBox1 = new QGroupBox( tab, "groupBox1" );
    groupBox1->setEnabled( FALSE );
    groupBox1->setColumnLayout(0, Qt::Vertical );
    groupBox1->layout()->setSpacing( 6 );
    groupBox1->layout()->setMargin( 11 );
    groupBox1Layout = new QGridLayout( groupBox1->layout() );
    groupBox1Layout->setAlignment( Qt::AlignTop );

    checkBox1 = new QCheckBox( groupBox1, "checkBox1" );

    groupBox1Layout->addWidget( checkBox1, 0, 0 );

    kcfg_autoAcceptCalls = new QCheckBox( groupBox1, "kcfg_autoAcceptCalls" );
    kcfg_autoAcceptCalls->setChecked( TRUE );

    groupBox1Layout->addWidget( kcfg_autoAcceptCalls, 1, 0 );

    checkBox3 = new QCheckBox( groupBox1, "checkBox3" );
    checkBox3->setChecked( FALSE );

    groupBox1Layout->addWidget( checkBox3, 2, 0 );

    tabLayout->addWidget( groupBox1, 0, 0 );

    groupBox1_2 = new QGroupBox( tab, "groupBox1_2" );
    groupBox1_2->setEnabled( FALSE );
    groupBox1_2->setColumnLayout(0, Qt::Vertical );
    groupBox1_2->layout()->setSpacing( 6 );
    groupBox1_2->layout()->setMargin( 11 );
    groupBox1_2Layout = new QVBoxLayout( groupBox1_2->layout() );
    groupBox1_2Layout->setAlignment( Qt::AlignTop );

    checkBox4 = new QCheckBox( groupBox1_2, "checkBox4" );
    groupBox1_2Layout->addWidget( checkBox4 );

    checkBox5 = new QCheckBox( groupBox1_2, "checkBox5" );
    groupBox1_2Layout->addWidget( checkBox5 );

    checkBox6 = new QCheckBox( groupBox1_2, "checkBox6" );
    groupBox1_2Layout->addWidget( checkBox6 );

    layout1 = new QHBoxLayout( 0, 0, 6, "layout1"); 

    textLabel1 = new QLabel( groupBox1_2, "textLabel1" );
    layout1->addWidget( textLabel1 );

    lineEdit1 = new QLineEdit( groupBox1_2, "lineEdit1" );
    layout1->addWidget( lineEdit1 );
    groupBox1_2Layout->addLayout( layout1 );

    tabLayout->addWidget( groupBox1_2, 1, 0 );

    groupBox1_3 = new QGroupBox( tab, "groupBox1_3" );
    groupBox1_3->setEnabled( FALSE );
    groupBox1_3->setColumnLayout(0, Qt::Vertical );
    groupBox1_3->layout()->setSpacing( 6 );
    groupBox1_3->layout()->setMargin( 11 );
    groupBox1_3Layout = new QGridLayout( groupBox1_3->layout() );
    groupBox1_3Layout->setAlignment( Qt::AlignTop );

    layout3 = new QHBoxLayout( 0, 0, 6, "layout3"); 

    textLabel1_2 = new QLabel( groupBox1_3, "textLabel1_2" );
    layout3->addWidget( textLabel1_2 );

    kcfg_localAudioPort = new QSpinBox( groupBox1_3, "kcfg_localAudioPort" );
    kcfg_localAudioPort->setMaxValue( 65000 );
    kcfg_localAudioPort->setMinValue( 1024 );
    kcfg_localAudioPort->setValue( 21232 );
    layout3->addWidget( kcfg_localAudioPort );

    groupBox1_3Layout->addLayout( layout3, 0, 0 );

    layout4 = new QHBoxLayout( 0, 0, 6, "layout4"); 

    textLabel2_2 = new QLabel( groupBox1_3, "textLabel2_2" );
    layout4->addWidget( textLabel2_2 );

    kcfg_localVideoPort = new QSpinBox( groupBox1_3, "kcfg_localVideoPort" );
    kcfg_localVideoPort->setMaxValue( 65000 );
    kcfg_localVideoPort->setMinValue( 1024 );
    kcfg_localVideoPort->setValue( 21234 );
    layout4->addWidget( kcfg_localVideoPort );

    groupBox1_3Layout->addLayout( layout4, 1, 0 );

    tabLayout->addWidget( groupBox1_3, 2, 0 );
    tabWidget2->insertTab( tab, QString::fromLatin1("") );

    tab_2 = new QWidget( tabWidget2, "tab_2" );
    tabLayout_2 = new QGridLayout( tab_2, 1, 1, 11, 6, "tabLayout_2"); 

    groupBox4 = new QGroupBox( tab_2, "groupBox4" );
    groupBox4->setEnabled( FALSE );
    groupBox4->setColumnLayout(0, Qt::Vertical );
    groupBox4->layout()->setSpacing( 6 );
    groupBox4->layout()->setMargin( 11 );
    groupBox4Layout = new QGridLayout( groupBox4->layout() );
    groupBox4Layout->setAlignment( Qt::AlignTop );

    kcfg_enableNAT = new QCheckBox( groupBox4, "kcfg_enableNAT" );

    groupBox4Layout->addWidget( kcfg_enableNAT, 0, 0 );

    layout3_2 = new QHBoxLayout( 0, 0, 6, "layout3_2"); 

    textLabel2 = new QLabel( groupBox4, "textLabel2" );
    layout3_2->addWidget( textLabel2 );

    kcfg_publicIP = new QLineEdit( groupBox4, "kcfg_publicIP" );
    layout3_2->addWidget( kcfg_publicIP );

    groupBox4Layout->addLayout( layout3_2, 1, 0 );

    tabLayout_2->addWidget( groupBox4, 0, 0 );

    groupBox5 = new QGroupBox( tab_2, "groupBox5" );
    groupBox5->setEnabled( FALSE );
    groupBox5->setColumnLayout(0, Qt::Vertical );
    groupBox5->layout()->setSpacing( 6 );
    groupBox5->layout()->setMargin( 11 );
    groupBox5Layout = new QGridLayout( groupBox5->layout() );
    groupBox5Layout->setAlignment( Qt::AlignTop );

    checkBox10 = new QCheckBox( groupBox5, "checkBox10" );
    checkBox10->setChecked( TRUE );

    groupBox5Layout->addWidget( checkBox10, 0, 0 );

    tabLayout_2->addWidget( groupBox5, 1, 0 );
    tabWidget2->insertTab( tab_2, QString::fromLatin1("") );

    KonferenceConfigConnectionDlgLayoutLayout->addWidget( tabWidget2, 0, 0 );
    languageChange();
    resize( QSize(361, 411).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );
}

/*
 *  Destroys the object and frees any allocated resources
 */
KonferenceConfigConnectionDlgLayout::~KonferenceConfigConnectionDlgLayout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void KonferenceConfigConnectionDlgLayout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    groupBox1->setTitle( tr2i18n( "Incoming Calls" ) );
    checkBox1->setText( tr2i18n( "Do something on incoming call" ) );
    kcfg_autoAcceptCalls->setText( tr2i18n( "Auto-accept incoming calls" ) );
    checkBox3->setText( tr2i18n( "Auto-reject incoming calls" ) );
    groupBox1_2->setTitle( tr2i18n( "Call Forwarding" ) );
    checkBox4->setText( tr2i18n( "Forward all calls" ) );
    checkBox5->setText( tr2i18n( "Forward when busy / allready in call" ) );
    checkBox6->setText( tr2i18n( "Forward rejected calls" ) );
    textLabel1->setText( tr2i18n( "Forward to:" ) );
    groupBox1_3->setTitle( tr2i18n( "Advanced" ) );
    textLabel1_2->setText( tr2i18n( "Local Audio Port" ) );
    textLabel2_2->setText( tr2i18n( "Local Video Port" ) );
    tabWidget2->changeTab( tab, tr2i18n( "General" ) );
    groupBox4->setTitle( tr2i18n( "Network Adress Translation (NAT)" ) );
    kcfg_enableNAT->setText( tr2i18n( "Enable NAT" ) );
    textLabel2->setText( tr2i18n( "(Public) address of router:" ) );
    groupBox5->setTitle( tr2i18n( "Port Settings" ) );
    checkBox10->setText( tr2i18n( "Only use standard port (1720)" ) );
    tabWidget2->changeTab( tab_2, tr2i18n( "Firewall / NAT" ) );
}

#include "configconnectiondlglayout.moc"
