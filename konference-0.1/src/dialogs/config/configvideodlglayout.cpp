#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './configvideodlglayout.ui'
**
** Created: Fri Apr 22 02:28:29 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "configvideodlglayout.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qtabwidget.h>
#include <qcheckbox.h>
#include <qgroupbox.h>
#include <qlabel.h>
#include <qcombobox.h>
#include <qlineedit.h>
#include <qbuttongroup.h>
#include <qslider.h>
#include <qspinbox.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

/*
 *  Constructs a KonferenceConfigVideoDlgLayout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
KonferenceConfigVideoDlgLayout::KonferenceConfigVideoDlgLayout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "KonferenceConfigVideoDlgLayout" );
    KonferenceConfigVideoDlgLayoutLayout = new QGridLayout( this, 1, 1, 11, 6, "KonferenceConfigVideoDlgLayoutLayout"); 

    tabWidget2 = new QTabWidget( this, "tabWidget2" );

    tab = new QWidget( tabWidget2, "tab" );
    tabLayout = new QGridLayout( tab, 1, 1, 11, 6, "tabLayout"); 

    kcfg_videoReception = new QCheckBox( tab, "kcfg_videoReception" );
    kcfg_videoReception->setEnabled( FALSE );
    kcfg_videoReception->setChecked( TRUE );

    tabLayout->addWidget( kcfg_videoReception, 2, 0 );

    kcfg_videoTransmission = new QCheckBox( tab, "kcfg_videoTransmission" );
    kcfg_videoTransmission->setEnabled( FALSE );
    kcfg_videoTransmission->setChecked( TRUE );

    tabLayout->addWidget( kcfg_videoTransmission, 3, 0 );

    groupBox5 = new QGroupBox( tab, "groupBox5" );
    groupBox5->setColumnLayout(0, Qt::Vertical );
    groupBox5->layout()->setSpacing( 6 );
    groupBox5->layout()->setMargin( 11 );
    groupBox5Layout = new QGridLayout( groupBox5->layout() );
    groupBox5Layout->setAlignment( Qt::AlignTop );

    layout2 = new QHBoxLayout( 0, 0, 6, "layout2"); 

    textLabel2_3 = new QLabel( groupBox5, "textLabel2_3" );
    layout2->addWidget( textLabel2_3 );

    kcfg_videoDevice = new QComboBox( FALSE, groupBox5, "kcfg_videoDevice" );
    kcfg_videoDevice->setEditable( TRUE );
    kcfg_videoDevice->setAutoCompletion( TRUE );
    kcfg_videoDevice->setDuplicatesEnabled( FALSE );
    layout2->addWidget( kcfg_videoDevice );

    groupBox5Layout->addLayout( layout2, 1, 0 );

    layout4 = new QHBoxLayout( 0, 0, 6, "layout4"); 

    kcfg_fakeDeviceImage = new QLineEdit( groupBox5, "kcfg_fakeDeviceImage" );
    kcfg_fakeDeviceImage->setEnabled( TRUE );
    layout4->addWidget( kcfg_fakeDeviceImage );

    m_selectImageButton = new QPushButton( groupBox5, "m_selectImageButton" );
    m_selectImageButton->setEnabled( TRUE );
    layout4->addWidget( m_selectImageButton );

    groupBox5Layout->addLayout( layout4, 3, 0 );

    textLabel3_3 = new QLabel( groupBox5, "textLabel3_3" );
    textLabel3_3->setEnabled( TRUE );
    textLabel3_3->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    groupBox5Layout->addWidget( textLabel3_3, 2, 0 );

    tabLayout->addWidget( groupBox5, 1, 0 );

    buttonGroup1 = new QButtonGroup( tab, "buttonGroup1" );
    buttonGroup1->setColumnLayout(0, Qt::Vertical );
    buttonGroup1->layout()->setSpacing( 6 );
    buttonGroup1->layout()->setMargin( 11 );
    buttonGroup1Layout = new QGridLayout( buttonGroup1->layout() );
    buttonGroup1Layout->setAlignment( Qt::AlignTop );

    layout3 = new QHBoxLayout( 0, 0, 6, "layout3"); 

    textLabel1 = new QLabel( buttonGroup1, "textLabel1" );
    layout3->addWidget( textLabel1 );

    kcfg_videoPlugin = new QComboBox( FALSE, buttonGroup1, "kcfg_videoPlugin" );
    layout3->addWidget( kcfg_videoPlugin );

    buttonGroup1Layout->addLayout( layout3, 1, 0 );

    textLabel2 = new QLabel( buttonGroup1, "textLabel2" );

    buttonGroup1Layout->addWidget( textLabel2, 0, 0 );

    tabLayout->addWidget( buttonGroup1, 0, 0 );
    tabWidget2->insertTab( tab, QString::fromLatin1("") );

    TabPage = new QWidget( tabWidget2, "TabPage" );
    TabPageLayout = new QGridLayout( TabPage, 1, 1, 11, 6, "TabPageLayout"); 

    groupBox2 = new QGroupBox( TabPage, "groupBox2" );
    groupBox2->setEnabled( TRUE );

    textLabel8_6 = new QLabel( groupBox2, "textLabel8_6" );
    textLabel8_6->setGeometry( QRect( 85, 29, 25, 29 ) );

    textLabel8_2_5_5 = new QLabel( groupBox2, "textLabel8_2_5_5" );
    textLabel8_2_5_5->setGeometry( QRect( 290, 134, 28, 29 ) );

    textLabel8_3 = new QLabel( groupBox2, "textLabel8_3" );
    textLabel8_3->setGeometry( QRect( 85, 64, 25, 29 ) );

    kcfg_hue = new QSlider( groupBox2, "kcfg_hue" );
    kcfg_hue->setGeometry( QRect( 116, 134, 168, 29 ) );
    kcfg_hue->setMaxValue( 65535 );
    kcfg_hue->setLineStep( 100 );
    kcfg_hue->setPageStep( 10000 );
    kcfg_hue->setValue( 30000 );
    kcfg_hue->setOrientation( QSlider::Horizontal );
    kcfg_hue->setTickmarks( QSlider::Below );

    kcfg_color = new QSlider( groupBox2, "kcfg_color" );
    kcfg_color->setGeometry( QRect( 116, 64, 168, 29 ) );
    kcfg_color->setMaxValue( 65535 );
    kcfg_color->setLineStep( 10 );
    kcfg_color->setPageStep( 10000 );
    kcfg_color->setValue( 30000 );
    kcfg_color->setOrientation( QSlider::Horizontal );
    kcfg_color->setTickmarks( QSlider::Below );

    textLabel1_3 = new QLabel( groupBox2, "textLabel1_3" );
    textLabel1_3->setGeometry( QRect( 11, 134, 68, 29 ) );
    QFont textLabel1_3_font(  textLabel1_3->font() );
    textLabel1_3_font.setBold( TRUE );
    textLabel1_3->setFont( textLabel1_3_font ); 

    textLabel8_2_5_4 = new QLabel( groupBox2, "textLabel8_2_5_4" );
    textLabel8_2_5_4->setGeometry( QRect( 290, 99, 28, 29 ) );

    textLabel1_5 = new QLabel( groupBox2, "textLabel1_5" );
    textLabel1_5->setGeometry( QRect( 11, 99, 68, 29 ) );
    QFont textLabel1_5_font(  textLabel1_5->font() );
    textLabel1_5_font.setBold( TRUE );
    textLabel1_5->setFont( textLabel1_5_font ); 

    kcfg_contrast = new QSlider( groupBox2, "kcfg_contrast" );
    kcfg_contrast->setGeometry( QRect( 116, 99, 168, 29 ) );
    kcfg_contrast->setMinValue( 0 );
    kcfg_contrast->setMaxValue( 65535 );
    kcfg_contrast->setLineStep( 10 );
    kcfg_contrast->setPageStep( 10000 );
    kcfg_contrast->setOrientation( QSlider::Horizontal );
    kcfg_contrast->setTickmarks( QSlider::Below );

    textLabel1_4 = new QLabel( groupBox2, "textLabel1_4" );
    textLabel1_4->setGeometry( QRect( 11, 64, 68, 29 ) );
    QFont textLabel1_4_font(  textLabel1_4->font() );
    textLabel1_4_font.setBold( TRUE );
    textLabel1_4->setFont( textLabel1_4_font ); 

    textLabel8_5 = new QLabel( groupBox2, "textLabel8_5" );
    textLabel8_5->setGeometry( QRect( 85, 134, 25, 29 ) );

    kcfg_brightness = new QSlider( groupBox2, "kcfg_brightness" );
    kcfg_brightness->setGeometry( QRect( 116, 29, 168, 29 ) );
    kcfg_brightness->setMaxValue( 65535 );
    kcfg_brightness->setLineStep( 10 );
    kcfg_brightness->setPageStep( 10000 );
    kcfg_brightness->setValue( 30000 );
    kcfg_brightness->setOrientation( QSlider::Horizontal );
    kcfg_brightness->setTickmarks( QSlider::Below );

    textLabel1_6 = new QLabel( groupBox2, "textLabel1_6" );
    textLabel1_6->setGeometry( QRect( 11, 29, 68, 29 ) );
    QFont textLabel1_6_font(  textLabel1_6->font() );
    textLabel1_6_font.setBold( TRUE );
    textLabel1_6->setFont( textLabel1_6_font ); 

    textLabel8_4 = new QLabel( groupBox2, "textLabel8_4" );
    textLabel8_4->setGeometry( QRect( 85, 99, 25, 29 ) );

    textLabel8_2_5_3 = new QLabel( groupBox2, "textLabel8_2_5_3" );
    textLabel8_2_5_3->setGeometry( QRect( 290, 64, 28, 29 ) );

    textLabel8_2_5 = new QLabel( groupBox2, "textLabel8_2_5" );
    textLabel8_2_5->setGeometry( QRect( 290, 29, 28, 29 ) );

    TabPageLayout->addMultiCellWidget( groupBox2, 1, 1, 0, 1 );

    kcfg_videoSize = new QComboBox( FALSE, TabPage, "kcfg_videoSize" );

    TabPageLayout->addWidget( kcfg_videoSize, 0, 1 );

    textLabel2_2 = new QLabel( TabPage, "textLabel2_2" );
    textLabel2_2->setEnabled( TRUE );

    TabPageLayout->addWidget( textLabel2_2, 0, 0 );
    tabWidget2->insertTab( TabPage, QString::fromLatin1("") );

    tab_2 = new QWidget( tabWidget2, "tab_2" );
    tabLayout_2 = new QVBoxLayout( tab_2, 11, 6, "tabLayout_2"); 

    groupBox6 = new QGroupBox( tab_2, "groupBox6" );
    groupBox6->setEnabled( FALSE );
    groupBox6->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)5, (QSizePolicy::SizeType)0, 0, 0, groupBox6->sizePolicy().hasHeightForWidth() ) );
    groupBox6->setColumnLayout(0, Qt::Vertical );
    groupBox6->layout()->setSpacing( 6 );
    groupBox6->layout()->setMargin( 11 );
    groupBox6Layout = new QGridLayout( groupBox6->layout() );
    groupBox6Layout->setAlignment( Qt::AlignTop );

    textLabel6 = new QLabel( groupBox6, "textLabel6" );
    textLabel6->setTextFormat( QLabel::RichText );
    textLabel6->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    groupBox6Layout->addWidget( textLabel6, 1, 0 );

    kcfg_useH263 = new QCheckBox( groupBox6, "kcfg_useH263" );
    kcfg_useH263->setChecked( TRUE );

    groupBox6Layout->addWidget( kcfg_useH263, 0, 0 );
    tabLayout_2->addWidget( groupBox6 );

    groupBox7 = new QGroupBox( tab_2, "groupBox7" );
    groupBox7->setEnabled( FALSE );
    groupBox7->setColumnLayout(0, Qt::Vertical );
    groupBox7->layout()->setSpacing( 6 );
    groupBox7->layout()->setMargin( 11 );
    groupBox7Layout = new QGridLayout( groupBox7->layout() );
    groupBox7Layout->setAlignment( Qt::AlignTop );

    kcfg_maxVideoBandwidth = new QSpinBox( groupBox7, "kcfg_maxVideoBandwidth" );
    kcfg_maxVideoBandwidth->setMaxValue( 999 );

    groupBox7Layout->addWidget( kcfg_maxVideoBandwidth, 0, 1 );

    kcfg_minTransmitFps = new QSpinBox( groupBox7, "kcfg_minTransmitFps" );

    groupBox7Layout->addWidget( kcfg_minTransmitFps, 1, 1 );

    textLabel7 = new QLabel( groupBox7, "textLabel7" );

    groupBox7Layout->addWidget( textLabel7, 0, 0 );

    textLabel8_2 = new QLabel( groupBox7, "textLabel8_2" );

    groupBox7Layout->addWidget( textLabel8_2, 1, 0 );

    textLabel9 = new QLabel( groupBox7, "textLabel9" );
    textLabel9->setEnabled( FALSE );

    groupBox7Layout->addWidget( textLabel9, 2, 0 );

    kcfg_transmittedBackgroundBlocks = new QSpinBox( groupBox7, "kcfg_transmittedBackgroundBlocks" );
    kcfg_transmittedBackgroundBlocks->setEnabled( FALSE );

    groupBox7Layout->addWidget( kcfg_transmittedBackgroundBlocks, 2, 1 );
    tabLayout_2->addWidget( groupBox7 );

    groupBox8 = new QGroupBox( tab_2, "groupBox8" );
    groupBox8->setEnabled( FALSE );
    groupBox8->setColumnLayout(0, Qt::Vertical );
    groupBox8->layout()->setSpacing( 6 );
    groupBox8->layout()->setMargin( 11 );
    groupBox8Layout = new QGridLayout( groupBox8->layout() );
    groupBox8Layout->setAlignment( Qt::AlignTop );

    textLabel8_2_5_7 = new QLabel( groupBox8, "textLabel8_2_5_7" );

    groupBox8Layout->addWidget( textLabel8_2_5_7, 3, 2 );

    textLabel8_6_3 = new QLabel( groupBox8, "textLabel8_6_3" );

    groupBox8Layout->addWidget( textLabel8_6_3, 3, 0 );

    kcfg_receiveQuality = new QSlider( groupBox8, "kcfg_receiveQuality" );
    kcfg_receiveQuality->setLineStep( 10 );
    kcfg_receiveQuality->setPageStep( 10 );
    kcfg_receiveQuality->setValue( 40 );
    kcfg_receiveQuality->setOrientation( QSlider::Horizontal );
    kcfg_receiveQuality->setTickmarks( QSlider::Below );

    groupBox8Layout->addWidget( kcfg_receiveQuality, 3, 1 );

    kcfg_transmitQuality = new QSlider( groupBox8, "kcfg_transmitQuality" );
    kcfg_transmitQuality->setLineStep( 10 );
    kcfg_transmitQuality->setPageStep( 10 );
    kcfg_transmitQuality->setValue( 40 );
    kcfg_transmitQuality->setOrientation( QSlider::Horizontal );
    kcfg_transmitQuality->setTickmarks( QSlider::Below );

    groupBox8Layout->addWidget( kcfg_transmitQuality, 1, 1 );

    textLabel8_2_5_6 = new QLabel( groupBox8, "textLabel8_2_5_6" );

    groupBox8Layout->addWidget( textLabel8_2_5_6, 1, 2 );

    textLabel10 = new QLabel( groupBox8, "textLabel10" );

    groupBox8Layout->addMultiCellWidget( textLabel10, 0, 0, 0, 1 );

    textLabel11 = new QLabel( groupBox8, "textLabel11" );

    groupBox8Layout->addMultiCellWidget( textLabel11, 2, 2, 0, 1 );

    textLabel8_6_2 = new QLabel( groupBox8, "textLabel8_6_2" );

    groupBox8Layout->addWidget( textLabel8_6_2, 1, 0 );
    tabLayout_2->addWidget( groupBox8 );
    tabWidget2->insertTab( tab_2, QString::fromLatin1("") );

    KonferenceConfigVideoDlgLayoutLayout->addWidget( tabWidget2, 0, 0 );
    languageChange();
    resize( QSize(377, 512).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );

    // signals and slots connections
    connect( m_selectImageButton, SIGNAL( clicked() ), this, SLOT( selectImageClicked() ) );

    // tab order
    setTabOrder( kcfg_videoDevice, kcfg_fakeDeviceImage );
    setTabOrder( kcfg_fakeDeviceImage, m_selectImageButton );
    setTabOrder( m_selectImageButton, kcfg_videoReception );
    setTabOrder( kcfg_videoReception, kcfg_videoTransmission );
    setTabOrder( kcfg_videoTransmission, kcfg_brightness );
    setTabOrder( kcfg_brightness, kcfg_color );
    setTabOrder( kcfg_color, kcfg_contrast );
    setTabOrder( kcfg_contrast, kcfg_hue );
    setTabOrder( kcfg_hue, tabWidget2 );
}

/*
 *  Destroys the object and frees any allocated resources
 */
KonferenceConfigVideoDlgLayout::~KonferenceConfigVideoDlgLayout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void KonferenceConfigVideoDlgLayout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    kcfg_videoReception->setText( tr2i18n( "Enable video reception by default" ) );
    kcfg_videoTransmission->setText( tr2i18n( "Enable video transmission by default" ) );
    groupBox5->setTitle( tr2i18n( "Plugin Specific Options" ) );
    textLabel2_3->setText( tr2i18n( "Device:" ) );
    kcfg_fakeDeviceImage->setText( QString::null );
    m_selectImageButton->setText( tr2i18n( "Browse..." ) );
    textLabel3_3->setText( tr2i18n( "Choose the image to be transmitted...\n"
"If no image is selected, or the path to the image is incorrect, the konference-logo will be displayed/transmitted" ) );
    buttonGroup1->setTitle( tr2i18n( "Video Plugin" ) );
    textLabel1->setText( tr2i18n( "Plugin:" ) );
    kcfg_videoPlugin->clear();
    kcfg_videoPlugin->insertItem( tr2i18n( "Video for Linux (V4L)" ) );
    kcfg_videoPlugin->insertItem( tr2i18n( "Image" ) );
    textLabel2->setText( tr2i18n( "put some text here... blah blah blah\n"
"\n"
"you know, i love designing GUIs :P" ) );
    tabWidget2->changeTab( tab, tr2i18n( "General" ) );
    groupBox2->setTitle( tr2i18n( "Video Settings" ) );
    textLabel8_6->setText( tr2i18n( "Low" ) );
    textLabel8_2_5_5->setText( tr2i18n( "High" ) );
    textLabel8_3->setText( tr2i18n( "Low" ) );
    textLabel1_3->setText( tr2i18n( "Hue:" ) );
    textLabel8_2_5_4->setText( tr2i18n( "High" ) );
    textLabel1_5->setText( tr2i18n( "Contrast:" ) );
    textLabel1_4->setText( tr2i18n( "Color:" ) );
    textLabel8_5->setText( tr2i18n( "Low" ) );
    textLabel1_6->setText( tr2i18n( "Brightness:" ) );
    textLabel8_4->setText( tr2i18n( "Low" ) );
    textLabel8_2_5_3->setText( tr2i18n( "High" ) );
    textLabel8_2_5->setText( tr2i18n( "High" ) );
    kcfg_videoSize->clear();
    kcfg_videoSize->insertItem( tr2i18n( "4CIF (704x576)" ) );
    kcfg_videoSize->insertItem( tr2i18n( "CIF (352x288)" ) );
    kcfg_videoSize->insertItem( tr2i18n( "QCIF (176x144)" ) );
    kcfg_videoSize->insertItem( tr2i18n( "SQCIF (128x96)" ) );
    textLabel2_2->setText( tr2i18n( "Video size:" ) );
    tabWidget2->changeTab( TabPage, tr2i18n( "Advanced Options" ) );
    groupBox6->setTitle( tr2i18n( "Codec" ) );
    textLabel6->setText( tr2i18n( "Unlike prior versions of Konference h263 is now netmeeting compatible.\n"
"This will only take effect if your openh323 was compiled with (rfc2190-)h263-support.\n"
"\n"
"<b><h3>NOTE: Some versions of Openh323 might crash if you enable this!</h3></b>" ) );
    kcfg_useH263->setText( tr2i18n( "Use H263-Codec" ) );
    groupBox7->setTitle( tr2i18n( "Bandwidth Control" ) );
    textLabel7->setText( tr2i18n( "Max. video bandwidth (kB/s):" ) );
    textLabel8_2->setText( tr2i18n( "Min. transmitted FPS:" ) );
    textLabel9->setText( tr2i18n( "Transmitted background blocks:" ) );
    groupBox8->setTitle( tr2i18n( "Video Quality" ) );
    textLabel8_2_5_7->setText( tr2i18n( "High" ) );
    textLabel8_6_3->setText( tr2i18n( "Low" ) );
    textLabel8_2_5_6->setText( tr2i18n( "High" ) );
    textLabel10->setText( tr2i18n( "Transmitted video quality:" ) );
    textLabel11->setText( tr2i18n( "Received video quality:" ) );
    textLabel8_6_2->setText( tr2i18n( "Low" ) );
    tabWidget2->changeTab( tab_2, tr2i18n( "Codec Options" ) );
}

void KonferenceConfigVideoDlgLayout::selectImageClicked()
{
    qWarning( "KonferenceConfigVideoDlgLayout::selectImageClicked(): Not implemented yet" );
}

#include "configvideodlglayout.moc"
