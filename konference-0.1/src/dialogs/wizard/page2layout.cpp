#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './page2layout.ui'
**
** Created: Fri Apr 22 02:29:15 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "page2layout.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qbuttongroup.h>
#include <qlabel.h>
#include <qlineedit.h>
#include <qcombobox.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a page2layout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
page2layout::page2layout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "page2layout" );
    page2layoutLayout = new QVBoxLayout( this, 11, 6, "page2layoutLayout"); 

    buttonGroup1 = new QButtonGroup( this, "buttonGroup1" );
    buttonGroup1->setColumnLayout(0, Qt::Vertical );
    buttonGroup1->layout()->setSpacing( 6 );
    buttonGroup1->layout()->setMargin( 11 );
    buttonGroup1Layout = new QGridLayout( buttonGroup1->layout() );
    buttonGroup1Layout->setAlignment( Qt::AlignTop );

    textLabel3 = new QLabel( buttonGroup1, "textLabel3" );

    buttonGroup1Layout->addWidget( textLabel3, 1, 0 );

    m_nameEdit = new QLineEdit( buttonGroup1, "m_nameEdit" );

    buttonGroup1Layout->addWidget( m_nameEdit, 1, 1 );

    textLabel2 = new QLabel( buttonGroup1, "textLabel2" );
    textLabel2->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)5, (QSizePolicy::SizeType)0, 0, 0, textLabel2->sizePolicy().hasHeightForWidth() ) );
    textLabel2->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    buttonGroup1Layout->addMultiCellWidget( textLabel2, 0, 0, 0, 1 );
    page2layoutLayout->addWidget( buttonGroup1 );

    buttonGroup2 = new QButtonGroup( this, "buttonGroup2" );
    buttonGroup2->setColumnLayout(0, Qt::Vertical );
    buttonGroup2->layout()->setSpacing( 6 );
    buttonGroup2->layout()->setMargin( 11 );
    buttonGroup2Layout = new QHBoxLayout( buttonGroup2->layout() );
    buttonGroup2Layout->setAlignment( Qt::AlignTop );

    textLabel3_2 = new QLabel( buttonGroup2, "textLabel3_2" );
    buttonGroup2Layout->addWidget( textLabel3_2 );

    m_videoComboBox = new QComboBox( FALSE, buttonGroup2, "m_videoComboBox" );
    m_videoComboBox->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)3, (QSizePolicy::SizeType)0, 0, 0, m_videoComboBox->sizePolicy().hasHeightForWidth() ) );
    m_videoComboBox->setEditable( TRUE );
    buttonGroup2Layout->addWidget( m_videoComboBox );
    page2layoutLayout->addWidget( buttonGroup2 );

    buttonGroup3 = new QButtonGroup( this, "buttonGroup3" );
    buttonGroup3->setColumnLayout(0, Qt::Vertical );
    buttonGroup3->layout()->setSpacing( 6 );
    buttonGroup3->layout()->setMargin( 11 );
    buttonGroup3Layout = new QGridLayout( buttonGroup3->layout() );
    buttonGroup3Layout->setAlignment( Qt::AlignTop );

    m_audioOutputDeviceComboBox = new QComboBox( FALSE, buttonGroup3, "m_audioOutputDeviceComboBox" );
    m_audioOutputDeviceComboBox->setEditable( TRUE );

    buttonGroup3Layout->addWidget( m_audioOutputDeviceComboBox, 3, 1 );

    m_audioInputDeviceComboBox = new QComboBox( FALSE, buttonGroup3, "m_audioInputDeviceComboBox" );
    m_audioInputDeviceComboBox->setEditable( TRUE );

    buttonGroup3Layout->addMultiCellWidget( m_audioInputDeviceComboBox, 1, 2, 1, 1 );

    textLabel4 = new QLabel( buttonGroup3, "textLabel4" );

    buttonGroup3Layout->addWidget( textLabel4, 0, 0 );

    textLabel5 = new QLabel( buttonGroup3, "textLabel5" );

    buttonGroup3Layout->addWidget( textLabel5, 1, 0 );

    textLabel6 = new QLabel( buttonGroup3, "textLabel6" );

    buttonGroup3Layout->addMultiCellWidget( textLabel6, 2, 3, 0, 0 );

    m_audioPluginComboBox = new QComboBox( FALSE, buttonGroup3, "m_audioPluginComboBox" );
    m_audioPluginComboBox->setEnabled( FALSE );
    m_audioPluginComboBox->setEditable( TRUE );

    buttonGroup3Layout->addWidget( m_audioPluginComboBox, 0, 1 );
    page2layoutLayout->addWidget( buttonGroup3 );
    spacer1 = new QSpacerItem( 20, 21, QSizePolicy::Minimum, QSizePolicy::Expanding );
    page2layoutLayout->addItem( spacer1 );
    languageChange();
    resize( QSize(470, 472).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );

    // signals and slots connections
    connect( m_audioPluginComboBox, SIGNAL( textChanged(const QString&) ), this, SLOT( pluginChanged(const QString&) ) );
}

/*
 *  Destroys the object and frees any allocated resources
 */
page2layout::~page2layout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void page2layout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    buttonGroup1->setTitle( tr2i18n( "Name" ) );
    textLabel3->setText( tr2i18n( "Name:" ) );
    textLabel2->setText( tr2i18n( "Please enter your firstname and (optionally) your surname.\n"
"This will be used to identify you during a videoconference." ) );
    buttonGroup2->setTitle( tr2i18n( "Video" ) );
    textLabel3_2->setText( tr2i18n( "Source:" ) );
    m_videoComboBox->clear();
    m_videoComboBox->insertItem( tr2i18n( "/dev/video0" ) );
    buttonGroup3->setTitle( tr2i18n( "Audio" ) );
    textLabel4->setText( tr2i18n( "Plugin:" ) );
    textLabel5->setText( tr2i18n( "Device for audio in:" ) );
    textLabel6->setText( tr2i18n( "Device for audio out:" ) );
    m_audioPluginComboBox->clear();
    m_audioPluginComboBox->insertItem( tr2i18n( "OSS" ) );
}

void page2layout::pluginChanged(const QString&)
{
    qWarning( "page2layout::pluginChanged(const QString&): Not implemented yet" );
}

#include "page2layout.moc"
