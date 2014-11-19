#include <kdialog.h>
#include <klocale.h>
/****************************************************************************
** Form implementation generated from reading ui file './configaudiodlglayout.ui'
**
** Created: Fri Apr 22 02:28:37 2005
**      by: The User Interface Compiler ($Id: qt/main.cpp   3.3.4   edited Nov 24 2003 $)
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "configaudiodlglayout.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qtabwidget.h>
#include <qbuttongroup.h>
#include <qlabel.h>
#include <qcombobox.h>
#include <qgroupbox.h>
#include <qcheckbox.h>
#include <qspinbox.h>
#include <qheader.h>
#include <qlistview.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>
#include <qimage.h>
#include <qpixmap.h>


/*
 *  Constructs a KonferenceConfigAudioDlgLayout as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 */
KonferenceConfigAudioDlgLayout::KonferenceConfigAudioDlgLayout( QWidget* parent, const char* name, WFlags fl )
    : QWidget( parent, name, fl )
{
    if ( !name )
	setName( "KonferenceConfigAudioDlgLayout" );
    KonferenceConfigAudioDlgLayoutLayout = new QGridLayout( this, 1, 1, 11, 6, "KonferenceConfigAudioDlgLayoutLayout"); 

    tabWidget2 = new QTabWidget( this, "tabWidget2" );
    tabWidget2->setEnabled( TRUE );

    tab = new QWidget( tabWidget2, "tab" );
    tabLayout = new QGridLayout( tab, 1, 1, 11, 6, "tabLayout"); 

    buttonGroup2 = new QButtonGroup( tab, "buttonGroup2" );
    buttonGroup2->setEnabled( TRUE );
    buttonGroup2->setColumnLayout(0, Qt::Vertical );
    buttonGroup2->layout()->setSpacing( 6 );
    buttonGroup2->layout()->setMargin( 11 );
    buttonGroup2Layout = new QGridLayout( buttonGroup2->layout() );
    buttonGroup2Layout->setAlignment( Qt::AlignTop );

    textLabel1 = new QLabel( buttonGroup2, "textLabel1" );

    buttonGroup2Layout->addWidget( textLabel1, 1, 0 );

    kcfg_audioPlugin = new QComboBox( FALSE, buttonGroup2, "kcfg_audioPlugin" );
    kcfg_audioPlugin->setEnabled( TRUE );
    kcfg_audioPlugin->setEditable( FALSE );

    buttonGroup2Layout->addWidget( kcfg_audioPlugin, 1, 1 );

    textLabel2 = new QLabel( buttonGroup2, "textLabel2" );
    textLabel2->setAlignment( int( QLabel::WordBreak | QLabel::AlignVCenter ) );

    buttonGroup2Layout->addMultiCellWidget( textLabel2, 0, 0, 0, 1 );

    tabLayout->addWidget( buttonGroup2, 0, 0 );

    groupBox1 = new QGroupBox( tab, "groupBox1" );
    groupBox1->setColumnLayout(0, Qt::Vertical );
    groupBox1->layout()->setSpacing( 6 );
    groupBox1->layout()->setMargin( 11 );
    groupBox1Layout = new QGridLayout( groupBox1->layout() );
    groupBox1Layout->setAlignment( Qt::AlignTop );

    layout1_3 = new QVBoxLayout( 0, 0, 6, "layout1_3"); 

    kcfg_outputMute = new QCheckBox( groupBox1, "kcfg_outputMute" );
    kcfg_outputMute->setEnabled( FALSE );
    layout1_3->addWidget( kcfg_outputMute );

    textLabel4_3 = new QLabel( groupBox1, "textLabel4_3" );
    textLabel4_3->setEnabled( FALSE );
    layout1_3->addWidget( textLabel4_3 );

    groupBox1Layout->addLayout( layout1_3, 3, 0 );

    layout1_2 = new QVBoxLayout( 0, 0, 6, "layout1_2"); 

    kcfg_inputMute = new QCheckBox( groupBox1, "kcfg_inputMute" );
    kcfg_inputMute->setEnabled( FALSE );
    layout1_2->addWidget( kcfg_inputMute );

    textLabel4_2 = new QLabel( groupBox1, "textLabel4_2" );
    textLabel4_2->setEnabled( FALSE );
    layout1_2->addWidget( textLabel4_2 );

    groupBox1Layout->addLayout( layout1_2, 2, 0 );

    layout6 = new QHBoxLayout( 0, 0, 6, "layout6"); 

    ossInputLabel = new QLabel( groupBox1, "ossInputLabel" );
    layout6->addWidget( ossInputLabel );

    kcfg_inputDevice = new QComboBox( FALSE, groupBox1, "kcfg_inputDevice" );
    kcfg_inputDevice->setEditable( TRUE );
    kcfg_inputDevice->setDuplicatesEnabled( FALSE );
    layout6->addWidget( kcfg_inputDevice );

    groupBox1Layout->addLayout( layout6, 0, 0 );

    layout7 = new QHBoxLayout( 0, 0, 6, "layout7"); 

    ossOutputLabel = new QLabel( groupBox1, "ossOutputLabel" );
    layout7->addWidget( ossOutputLabel );

    kcfg_outputDevice = new QComboBox( FALSE, groupBox1, "kcfg_outputDevice" );
    kcfg_outputDevice->setEditable( TRUE );
    kcfg_outputDevice->setDuplicatesEnabled( FALSE );
    layout7->addWidget( kcfg_outputDevice );

    groupBox1Layout->addLayout( layout7, 1, 0 );

    tabLayout->addWidget( groupBox1, 1, 0 );
    tabWidget2->insertTab( tab, QString::fromLatin1("") );

    tab_2 = new QWidget( tabWidget2, "tab_2" );
    tabLayout_2 = new QGridLayout( tab_2, 1, 1, 11, 6, "tabLayout_2"); 

    groupBox6 = new QGroupBox( tab_2, "groupBox6" );
    groupBox6->setEnabled( FALSE );
    groupBox6->setColumnLayout(0, Qt::Vertical );
    groupBox6->layout()->setSpacing( 6 );
    groupBox6->layout()->setMargin( 11 );
    groupBox6Layout = new QGridLayout( groupBox6->layout() );
    groupBox6Layout->setAlignment( Qt::AlignTop );

    kcfg_maxJitter = new QSpinBox( groupBox6, "kcfg_maxJitter" );
    kcfg_maxJitter->setMaxValue( 1000 );
    kcfg_maxJitter->setValue( 1000 );

    groupBox6Layout->addWidget( kcfg_maxJitter, 1, 1 );

    kcfg_minJitter = new QSpinBox( groupBox6, "kcfg_minJitter" );
    kcfg_minJitter->setMaxValue( 9999 );
    kcfg_minJitter->setMinValue( 0 );
    kcfg_minJitter->setValue( 20 );

    groupBox6Layout->addWidget( kcfg_minJitter, 0, 1 );

    textLabel1_4 = new QLabel( groupBox6, "textLabel1_4" );

    groupBox6Layout->addWidget( textLabel1_4, 0, 0 );

    textLabel2_4 = new QLabel( groupBox6, "textLabel2_4" );

    groupBox6Layout->addWidget( textLabel2_4, 1, 0 );

    kcfg_silenceDetection = new QCheckBox( groupBox6, "kcfg_silenceDetection" );
    kcfg_silenceDetection->setEnabled( FALSE );
    kcfg_silenceDetection->setChecked( TRUE );

    groupBox6Layout->addMultiCellWidget( kcfg_silenceDetection, 2, 2, 0, 1 );

    tabLayout_2->addWidget( groupBox6, 1, 0 );

    groupBox5 = new QGroupBox( tab_2, "groupBox5" );
    groupBox5->setEnabled( FALSE );
    groupBox5->setColumnLayout(0, Qt::Vertical );
    groupBox5->layout()->setSpacing( 6 );
    groupBox5->layout()->setMargin( 11 );
    groupBox5Layout = new QGridLayout( groupBox5->layout() );
    groupBox5Layout->setAlignment( Qt::AlignTop );

    layout6_2 = new QVBoxLayout( 0, 0, 6, "layout6_2"); 
    spacer2 = new QSpacerItem( 20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding );
    layout6_2->addItem( spacer2 );

    m_moveUpButton = new QPushButton( groupBox5, "m_moveUpButton" );
    m_moveUpButton->setEnabled( FALSE );
    layout6_2->addWidget( m_moveUpButton );
    spacer1 = new QSpacerItem( 20, 10, QSizePolicy::Minimum, QSizePolicy::Fixed );
    layout6_2->addItem( spacer1 );

    m_moveDownButton = new QPushButton( groupBox5, "m_moveDownButton" );
    m_moveDownButton->setEnabled( FALSE );
    layout6_2->addWidget( m_moveDownButton );
    spacer3 = new QSpacerItem( 20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding );
    layout6_2->addItem( spacer3 );

    groupBox5Layout->addLayout( layout6_2, 0, 1 );

    m_codecListView = new QListView( groupBox5, "m_codecListView" );
    m_codecListView->addColumn( tr2i18n( "Name" ) );
    m_codecListView->addColumn( tr2i18n( "Quality" ) );
    m_codecListView->addColumn( tr2i18n( "Bandwidth Usage" ) );
    m_codecListView->setEnabled( FALSE );
    m_codecListView->setMidLineWidth( 0 );
    m_codecListView->setResizePolicy( QScrollView::Manual );
    m_codecListView->setSelectionMode( QListView::Single );
    m_codecListView->setAllColumnsShowFocus( TRUE );
    m_codecListView->setShowSortIndicator( FALSE );
    m_codecListView->setItemMargin( 1 );
    m_codecListView->setRootIsDecorated( FALSE );

    groupBox5Layout->addWidget( m_codecListView, 0, 0 );

    tabLayout_2->addWidget( groupBox5, 0, 0 );
    tabWidget2->insertTab( tab_2, QString::fromLatin1("") );

    KonferenceConfigAudioDlgLayoutLayout->addWidget( tabWidget2, 0, 0 );
    languageChange();
    resize( QSize(450, 413).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );

    // signals and slots connections
    connect( m_moveUpButton, SIGNAL( clicked() ), this, SLOT( slotMoveUpButtonClicked() ) );
    connect( m_moveDownButton, SIGNAL( clicked() ), this, SLOT( slotMoveDownButtonClicked() ) );
    connect( kcfg_audioPlugin, SIGNAL( activated(const QString&) ), this, SLOT( pluginChanged(const QString&) ) );
}

/*
 *  Destroys the object and frees any allocated resources
 */
KonferenceConfigAudioDlgLayout::~KonferenceConfigAudioDlgLayout()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void KonferenceConfigAudioDlgLayout::languageChange()
{
    setCaption( tr2i18n( "Form1" ) );
    buttonGroup2->setTitle( tr2i18n( "Audio Plugins" ) );
    textLabel1->setText( tr2i18n( "Audio plugin:" ) );
    kcfg_audioPlugin->clear();
    kcfg_audioPlugin->insertItem( tr2i18n( "Arts" ) );
    kcfg_audioPlugin->insertItem( tr2i18n( "OSS" ) );
    textLabel2->setText( tr2i18n( "Select which plugin to use... TODO - proper text here werent that bad :)" ) );
    groupBox1->setTitle( tr2i18n( "Audio Devices" ) );
    kcfg_outputMute->setText( tr2i18n( "Disable audio output (Mute)" ) );
    textLabel4_3->setText( tr2i18n( "Enabling this means, that you will not hear any sound during calls." ) );
    kcfg_inputMute->setText( tr2i18n( "Disable audio input" ) );
    textLabel4_2->setText( tr2i18n( "Enabling this means, that you will not transmit any sound during calls." ) );
    ossInputLabel->setText( tr2i18n( "OSS input device:" ) );
    ossOutputLabel->setText( tr2i18n( "OSS output device:" ) );
    tabWidget2->changeTab( tab, tr2i18n( "Device Options" ) );
    groupBox6->setTitle( tr2i18n( "Codec Settings" ) );
    textLabel1_4->setText( tr2i18n( "Minimum jitter-buffer" ) );
    textLabel2_4->setText( tr2i18n( "Maximum jitter-buffer" ) );
    kcfg_silenceDetection->setText( tr2i18n( "Enable silence-detection" ) );
    groupBox5->setTitle( tr2i18n( "Codecs Available" ) );
    m_moveUpButton->setText( tr2i18n( "Move up" ) );
    m_moveDownButton->setText( tr2i18n( "Move down" ) );
    m_codecListView->header()->setLabel( 0, tr2i18n( "Name" ) );
    m_codecListView->header()->setLabel( 1, tr2i18n( "Quality" ) );
    m_codecListView->header()->setLabel( 2, tr2i18n( "Bandwidth Usage" ) );
    m_codecListView->clear();
    QListViewItem * item = new QListViewItem( m_codecListView, 0 );
    item->setText( 0, tr2i18n( "SpeexNarrow-15" ) );
    item->setText( 1, tr2i18n( "Excellent" ) );
    item->setText( 2, tr2i18n( "15 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "SpeexNarrow-8" ) );
    item->setText( 1, tr2i18n( "Good" ) );
    item->setText( 2, tr2i18n( "5 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "MS-GSM" ) );
    item->setText( 1, tr2i18n( "Good" ) );
    item->setText( 2, tr2i18n( "13 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "GSM-06.10" ) );
    item->setText( 1, tr2i18n( "Good" ) );
    item->setText( 2, tr2i18n( "16.5 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "G.726-32" ) );
    item->setText( 1, tr2i18n( "Good" ) );
    item->setText( 2, tr2i18n( "32 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "G.711-ALaw-64" ) );
    item->setText( 1, tr2i18n( "Excellent" ) );
    item->setText( 2, tr2i18n( "64 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "G.711-uLaw-64" ) );
    item->setText( 1, tr2i18n( "Excellent" ) );
    item->setText( 2, tr2i18n( "64 Kb/s" ) );

    item = new QListViewItem( m_codecListView, item );
    item->setText( 0, tr2i18n( "LPC-10" ) );
    item->setText( 1, tr2i18n( "Ok" ) );
    item->setText( 2, tr2i18n( "3.46 Kb/s" ) );

    tabWidget2->changeTab( tab_2, tr2i18n( "Codec Options" ) );
}

void KonferenceConfigAudioDlgLayout::slotMoveUpButtonClicked()
{
    qWarning( "KonferenceConfigAudioDlgLayout::slotMoveUpButtonClicked(): Not implemented yet" );
}

void KonferenceConfigAudioDlgLayout::slotMoveDownButtonClicked()
{
    qWarning( "KonferenceConfigAudioDlgLayout::slotMoveDownButtonClicked(): Not implemented yet" );
}

void KonferenceConfigAudioDlgLayout::pluginChanged(const QString&)
{
    qWarning( "KonferenceConfigAudioDlgLayout::pluginChanged(const QString&): Not implemented yet" );
}

#include "configaudiodlglayout.moc"
