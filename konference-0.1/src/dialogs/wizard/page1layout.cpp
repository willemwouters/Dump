#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './page1layout.ui'
**
** Created: Fri Apr 22 02:29:10 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "page1layout.h"

#include <qvariant.h>
#include <qlabel.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a page1layout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
page1layout::page1layout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "page1layout" );
    page1layoutLayout = new QVBoxLayout( this, 11, 6, "page1layoutLayout"); 

    textLabel1 = new QLabel( this, "textLabel1" );
    page1layoutLayout->addWidget( textLabel1 );
    spacer2 = new QSpacerItem( 20, 16, QSizePolicy::Minimum, QSizePolicy::Expanding );
    page1layoutLayout->addItem( spacer2 );

    textLabel2 = new QLabel( this, "textLabel2" );
    textLabel2->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );
    page1layoutLayout->addWidget( textLabel2 );
    spacer3 = new QSpacerItem( 20, 50, QSizePolicy::Minimum, QSizePolicy::Expanding );
    page1layoutLayout->addItem( spacer3 );

    layout3 = new QHBoxLayout( 0, 0, 6, "layout3"); 

    textLabel3 = new QLabel( this, "textLabel3" );
    layout3->addWidget( textLabel3 );
    page1layoutLayout->addLayout( layout3 );
    spacer1 = new QSpacerItem( 21, 130, QSizePolicy::Minimum, QSizePolicy::Expanding );
    page1layoutLayout->addItem( spacer1 );
    languageChange();
    resize( QSize(528, 321).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );
}

/*
 *  Destroys the object and frees any allocated resources
 */
page1layout::~page1layout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void page1layout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    textLabel1->setText( tr2i18n( "<b><h2>Welcome to Konference!</h2></b>" ) );
    textLabel2->setText( tr2i18n( "Before you can start Konference for the first time, you must fill in some needed informations.\n"
"You can change the information you enter here at any time using the configuration menue in the Konference main window." ) );
    textLabel3->setText( tr2i18n( "Please press the <b>Next</b> button to continue." ) );
}

#include "page1layout.moc"
