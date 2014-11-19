#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './configviewdlglayout.ui'
**
** Created: Fri Apr 22 02:28:51 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "configviewdlglayout.h"

#include <qvariant.h>
#include <qbuttongroup.h>
#include <qcheckbox.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a KonferenceConfigViewDlgLayout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
KonferenceConfigViewDlgLayout::KonferenceConfigViewDlgLayout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "KonferenceConfigViewDlgLayout" );
    KonferenceConfigViewDlgLayoutLayout = new QVBoxLayout( this, 11, 6, "KonferenceConfigViewDlgLayoutLayout"); 

    buttonGroup1 = new QButtonGroup( this, "buttonGroup1" );
    buttonGroup1->setColumnLayout(0, Qt::Vertical );
    buttonGroup1->layout()->setSpacing( 6 );
    buttonGroup1->layout()->setMargin( 11 );
    buttonGroup1Layout = new QGridLayout( buttonGroup1->layout() );
    buttonGroup1Layout->setAlignment( Qt::AlignTop );

    kcfg_mirrorVertical = new QCheckBox( buttonGroup1, "kcfg_mirrorVertical" );

    buttonGroup1Layout->addWidget( kcfg_mirrorVertical, 0, 0 );

    kcfg_mirrorHorizontal = new QCheckBox( buttonGroup1, "kcfg_mirrorHorizontal" );

    buttonGroup1Layout->addWidget( kcfg_mirrorHorizontal, 1, 0 );
    KonferenceConfigViewDlgLayoutLayout->addWidget( buttonGroup1 );
    spacer1 = new QSpacerItem( 31, 281, QSizePolicy::Minimum, QSizePolicy::Expanding );
    KonferenceConfigViewDlgLayoutLayout->addItem( spacer1 );
    languageChange();
    resize( QSize(345, 363).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );
}

/*
 *  Destroys the object and frees any allocated resources
 */
KonferenceConfigViewDlgLayout::~KonferenceConfigViewDlgLayout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void KonferenceConfigViewDlgLayout::languageChange()
{
    setCaption( tr2i18n( "View" ) );
    buttonGroup1->setTitle( tr2i18n( "Mirror Image" ) );
    kcfg_mirrorVertical->setText( tr2i18n( "Vertical" ) );
    kcfg_mirrorHorizontal->setText( tr2i18n( "Horizontal" ) );
}

#include "configviewdlglayout.moc"
