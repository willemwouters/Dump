#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './configpersonaldlglayout.ui'
**
** Created: Fri Apr 22 02:28:24 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "configpersonaldlglayout.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qgroupbox.h>
#include <qlineedit.h>
#include <qlabel.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a KonferenceConfigPersonalDlgLayout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
KonferenceConfigPersonalDlgLayout::KonferenceConfigPersonalDlgLayout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "KonferenceConfigPersonalDlgLayout" );
    KonferenceConfigPersonalDlgLayoutLayout = new QVBoxLayout( this, 11, 6, "KonferenceConfigPersonalDlgLayoutLayout"); 

    groupBox1 = new QGroupBox( this, "groupBox1" );
    groupBox1->setColumnLayout(0, Qt::Vertical );
    groupBox1->layout()->setSpacing( 6 );
    groupBox1->layout()->setMargin( 11 );
    groupBox1Layout = new QGridLayout( groupBox1->layout() );
    groupBox1Layout->setAlignment( Qt::AlignTop );

    kcfg_name = new QLineEdit( groupBox1, "kcfg_name" );
    kcfg_name->setEnabled( TRUE );

    groupBox1Layout->addMultiCellWidget( kcfg_name, 1, 1, 1, 2 );

    textLabel2 = new QLabel( groupBox1, "textLabel2" );
    textLabel2->setEnabled( TRUE );

    groupBox1Layout->addWidget( textLabel2, 1, 0 );

    textLabel1 = new QLabel( groupBox1, "textLabel1" );
    textLabel1->setEnabled( TRUE );
    textLabel1->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    groupBox1Layout->addMultiCellWidget( textLabel1, 0, 0, 0, 1 );
    KonferenceConfigPersonalDlgLayoutLayout->addWidget( groupBox1 );

    groupBox2 = new QGroupBox( this, "groupBox2" );
    groupBox2->setEnabled( FALSE );
    groupBox2->setColumnLayout(0, Qt::Vertical );
    groupBox2->layout()->setSpacing( 6 );
    groupBox2->layout()->setMargin( 11 );
    groupBox2Layout = new QGridLayout( groupBox2->layout() );
    groupBox2Layout->setAlignment( Qt::AlignTop );

    textLabel5 = new QLabel( groupBox2, "textLabel5" );

    groupBox2Layout->addWidget( textLabel5, 1, 0 );

    textLabel7 = new QLabel( groupBox2, "textLabel7" );

    groupBox2Layout->addMultiCellWidget( textLabel7, 3, 3, 0, 1 );

    textLabel6 = new QLabel( groupBox2, "textLabel6" );

    groupBox2Layout->addWidget( textLabel6, 2, 0 );

    kcfg_email = new QLineEdit( groupBox2, "kcfg_email" );

    groupBox2Layout->addWidget( kcfg_email, 1, 1 );

    kcfg_location = new QLineEdit( groupBox2, "kcfg_location" );

    groupBox2Layout->addWidget( kcfg_location, 2, 1 );

    kcfg_comment = new QLineEdit( groupBox2, "kcfg_comment" );

    groupBox2Layout->addMultiCellWidget( kcfg_comment, 4, 4, 0, 1 );

    textLabel4 = new QLabel( groupBox2, "textLabel4" );
    textLabel4->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    groupBox2Layout->addMultiCellWidget( textLabel4, 0, 0, 0, 1 );
    KonferenceConfigPersonalDlgLayoutLayout->addWidget( groupBox2 );
    languageChange();
    resize( QSize(464, 336).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );

    // tab order
    setTabOrder( kcfg_name, kcfg_email );
    setTabOrder( kcfg_email, kcfg_location );
    setTabOrder( kcfg_location, kcfg_comment );
}

/*
 *  Destroys the object and frees any allocated resources
 */
KonferenceConfigPersonalDlgLayout::~KonferenceConfigPersonalDlgLayout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void KonferenceConfigPersonalDlgLayout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    groupBox1->setTitle( tr2i18n( "Standard Details" ) );
    textLabel2->setText( tr2i18n( "Name:" ) );
    textLabel1->setText( tr2i18n( "The following details will be used to identify you during a videoconference." ) );
    groupBox2->setTitle( tr2i18n( "Extra Details" ) );
    textLabel5->setText( tr2i18n( "Email address:" ) );
    textLabel7->setText( tr2i18n( "A short comment about yourself:" ) );
    textLabel6->setText( tr2i18n( "Your location:" ) );
    textLabel4->setText( tr2i18n( "The following details will be displayed to users who browse the Internet Lookup Service (ILS). You can disable Internet Lookups from the Internet Lookup configuration page." ) );
}

#include "configpersonaldlglayout.moc"
