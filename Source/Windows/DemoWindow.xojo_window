#tag Window
Begin Window DemoWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   580
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   697343948
   MenuBarVisible  =   True
   MinHeight       =   580
   MinimizeButton  =   True
   MinWidth        =   702
   Placement       =   0
   Resizeable      =   True
   Title           =   "zdGravatarURL Demo"
   Visible         =   True
   Width           =   700
   Begin HTMLViewer AvatarDisplay
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   350
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Visible         =   True
      Width           =   350
   End
   Begin GroupBox GravatarSetupBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Setup"
      Enabled         =   True
      Height          =   350
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   380
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   300
      Begin TextField EmailAddressField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   399
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   65
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   260
      End
      Begin TextField SizeField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   441
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   107
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   61
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   18
         HelpTag         =   ""
         Index           =   1
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   399
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "Size"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   108
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   42
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   18
         HelpTag         =   ""
         Index           =   0
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   399
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         Text            =   "Email Address"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   40
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   186
      End
      Begin GroupBox DefaultImageBox
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Default Image"
         Enabled         =   True
         Height          =   182
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   399
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   142
         Underline       =   False
         Visible         =   True
         Width           =   260
         Begin Label Labels
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   18
            HelpTag         =   ""
            Index           =   3
            InitialParent   =   "DefaultImageBox"
            Italic          =   False
            Left            =   409
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   0
            Text            =   "Custom URL"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "SmallSystem"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   88
         End
         Begin PopupMenu DefaultImageMenu
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DefaultImageBox"
            InitialValue    =   ""
            Italic          =   False
            Left            =   409
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "SmallSystem"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   175
            Underline       =   False
            Visible         =   True
            Width           =   239
         End
         Begin TextArea CustomURLField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   73
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "DefaultImageBox"
            Italic          =   False
            Left            =   409
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   True
            TabIndex        =   2
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "SmallSystem"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   237
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   239
         End
         Begin CheckBox ForceDefaultCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Force default"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DefaultImageBox"
            Italic          =   False
            Left            =   509
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   0
            TabStop         =   True
            TextFont        =   "SmallSystem"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   206
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   129
         End
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   18
         HelpTag         =   ""
         Index           =   4
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   409
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "Rating"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   336
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin PopupMenu RatingMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         InitialValue    =   ""
         Italic          =   False
         Left            =   514
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   336
         Underline       =   False
         Visible         =   True
         Width           =   134
      End
      Begin CheckBox UseSSLCheck
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use SSL"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   519
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   128
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   140
      End
      Begin CheckBox UseJPGExtension
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use "".jpg"" extension"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GravatarSetupBox"
         Italic          =   False
         Left            =   519
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   99
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   140
      End
   End
   Begin Timer Autorefresher
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   673
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   -1
      Width           =   32
   End
   Begin Label ZaatarURL
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   380
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "© Za'atar Digital 2012 - 2013"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   371
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   300
   End
   Begin GroupBox ResultBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Result"
      Enabled         =   True
      Height          =   180
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   381
      Underline       =   False
      Visible         =   True
      Width           =   660
      Begin TextField EmailAddressHashField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ResultBox"
         Italic          =   False
         Left            =   41
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   427
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   618
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   18
         HelpTag         =   ""
         Index           =   5
         InitialParent   =   "ResultBox"
         Italic          =   False
         Left            =   41
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         Text            =   "Email hash"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   403
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   329
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   18
         HelpTag         =   ""
         Index           =   6
         InitialParent   =   "ResultBox"
         Italic          =   False
         Left            =   41
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "Gravatar URL"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   461
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   329
      End
      Begin TextArea GravatarURLArea
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   52
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "ResultBox"
         Italic          =   False
         Left            =   41
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   491
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   618
      End
      Begin Label Labels
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2
         InitialParent   =   "ResultBox"
         Italic          =   True
         Left            =   272
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         Text            =   "To copy the content of a field, just click on it."
         TextAlign       =   2
         TextColor       =   &c33333300
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   460
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   387
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  // Once here, all controls have been initialized
		  Me.Initialized = True
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub RefreshAvatar()
		  
		  If Not Me.Initialized Then Return
		  
		  Me.Autorefresher.Mode = Timer.ModeOff
		  
		  Dim theGravatar As New zdGravatarURL
		  
		  theGravatar.EmailAddress = Me.EmailAddressField.Text
		  theGravatar.Size = Val( Me.SizeField.Text )
		  
		  theGravatar.UseJPGExtension = Me.UseJPGExtension.Value
		  theGravatar.UseSSL = UseSSLCheck.value
		  theGravatar.ForceDefault = Me.ForceDefaultCheck.value
		  
		  Dim theTag As Variant = Me.DefaultImageMenu.RowTag( Me.DefaultImageMenu.ListIndex )
		  If theTag = "" Then
		    theGravatar.DefaultImage = ""
		    
		  Elseif theTag = "*" Then
		    theGravatar.DefaultImage = Me.CustomURLField.text
		    
		  Else
		    theGravatar.DefaultImage = theTag.StringValue
		    
		  End If
		  
		  theGravatar.Rating = Me.RatingMenu.RowTag( me.RatingMenu.ListIndex ).StringValue
		  
		  Dim theURL As String = theGravatar.URL
		  
		  // Updating the result GroupBox
		  Me.GravatarURLArea.Text = theURL
		  Me.EmailAddressHashField.Text = theGravatar.EmailAddressHash
		  
		  // Reload the icon
		  AvatarDisplay.LoadURL theURL
		  
		  AvatarDisplay.HelpTag = "The generated URL is:" + EndOfLine + theURL
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Initialized As Boolean
	#tag EndProperty


	#tag Constant, Name = kZaatarDigitalURL, Type = String, Dynamic = False, Default = \"http://www.zaatardigital.com/", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events EmailAddressField
	#tag Event
		Sub LostFocus()
		  
		  //-- Refresh the avatar when the TextArea lost the focus
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  If Key = EndOfLine.Macintosh Or Key = EndOfLine.UNIX Then _
		  ClearFocus
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  
		  //-- Restart the auto refresh timer after a change in the email address
		  
		  Self.Autorefresher.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SizeField
	#tag Event
		Sub LostFocus()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  
		  If Key = EndOfLine.Macintosh Or Key = EndOfLine.UNIX Then
		    
		    ClearFocus
		    
		  ElseIf ( Key >= "0" AND Key <= "9" ) Then
		    
		    Return False
		    
		  ElseIf Key < Chr( 32 ) Then
		    
		    Return False
		    
		  Else
		    
		    Beep
		    Return True
		    
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  
		  Self.Autorefresher.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DefaultImageBox
	#tag Event
		Sub Open()
		  #If TargetWin32 Then
		    
		    // This is to workaround a GUI on Windows
		    // <feedback://showreport?report_id=27227>
		    Me.Parent = Nil
		    
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DefaultImageMenu
	#tag Event
		Sub Open()
		  
		  //-- Build the default image popup menu
		  // Each row showing a predefined image has a RowTag that holds the value for the URL parameter "default"
		  // The custom URL row has a "*" RowTag.
		  
		  // We start with a bit of cleaning, just in case
		  Me.DeleteAllRows
		  
		  // Creating the arrays
		  Dim theTexts() As String = Array( "None", "Custom URL", "-", "Mistery Man", "Geometric pattern", _
		  "Monster ID", "Wavatar", "Retro", "Blank", "Error 404" )
		  Dim theTags() As String = Array( "", "*", "", "mm", "identicon", "monsterid", "wavatar", "retro", "blank", "404" )
		  
		  // Populating the menu
		  Dim theLastIndex As Integer = theTexts.Ubound
		  
		  For i As Integer = 0 to theLastIndex
		    
		    Dim theText As String = theTexts( i )
		    
		    // Is it a separator?
		    If theText = "-" Then
		      // There
		      #If Not TargetWin32 Then Me.AddSeparator
		      
		    Else
		      Me.AddRow theText
		      Me.RowTag( Me.ListCount - 1 ) = theTags( i )
		      
		    End If
		    
		  Next
		  
		  Me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		  //-- Handle the enabling/disabling of the custom URL textfield
		  
		  Dim theValue As Boolean = ( Me.RowTag( Me.ListIndex ).StringValue = "*" )
		  
		  Self.CustomURLField.Enabled = theValue
		  Self.Labels( 3 ).Enabled = theValue
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomURLField
	#tag Event
		Sub LostFocus()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  If Key = EndOfLine.Macintosh Or Key = EndOfLine.UNIX Then _
		  Self.SizeField.SetFocus
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  
		  Self.Autorefresher.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForceDefaultCheck
	#tag Event
		Sub Action()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RatingMenu
	#tag Event
		Sub Open()
		  
		  Me.DeleteAllRows
		  
		  Dim theTexts() As String = Array( "Default", "-", "G", "PG", "R", "X" )
		  Dim theTags() As String = Array( "", "", "g", "pg", "r", "x" )
		  
		  Dim theLastIndex As Integer = theTexts.Ubound
		  
		  For i As Integer = 0 to theLastIndex
		    
		    Dim theText As String = theTexts( i )
		    
		    If theText = "-" Then
		      Me.AddSeparator
		      
		    Else
		      Me.AddRow theText
		      Me.RowTag( Me.ListCount - 1 ) = theTags( i )
		      
		    End If
		    
		  Next
		  
		  Me.ListIndex = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseSSLCheck
	#tag Event
		Sub Action()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseJPGExtension
	#tag Event
		Sub Action()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Autorefresher
	#tag Event
		Sub Action()
		  
		  Self.RefreshAvatar
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ZaatarURL
	#tag Event
		Sub Open()
		  
		  //-- Setup the control
		  
		  Me.MouseCursor = System.Cursors.FingerPointer
		  Me.HelpTag = DemoWindow.kZaatarDigitalURL
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  
		  //-- The mouse is flyingover us
		  
		  // Set a text as blue and underlined
		  Me.TextColor = &c0000FF
		  Me.Underline = True
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  
		  //-- The mouse cursor is gone
		  
		  // Back to a black text and plain text
		  Me.TextColor = &c000000
		  Me.Underline = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  //-- The user clicked the link
		  #pragma Unused X
		  #pragma Unused Y
		  
		  // Open Za'atar digital website
		  ShowURL DemoWindow.kZaatarDigitalURL
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EmailAddressHashField
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  //-- Copy the hash in the clipboard if the field is not empty
		  
		  Dim theContent As String = Me.Text
		  
		  If theContent <> "" Then
		    
		    // Create a new clipboard object to access the system clipboard
		    Dim theClipBoard As New Clipboard
		    // Copy the hash text in the clipboard
		    theClipBoard.SetText Me.Text
		    
		    // Inform the user
		    MsgBox "The following text has been copied to the clipboard:" + EndOfLine + EndOfLine _
		    + theContent
		    
		  End If
		  
		  // Nothing left to do
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events GravatarURLArea
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  //-- Copy the hash in the clipboard if the TextArea is not empty
		  
		  Dim theContent As String = Me.Text
		  
		  If theContent <> "" Then
		    
		    // Create a new clipboard object to access the system clipboard
		    Dim theClipBoard As New Clipboard
		    // Copy the hash text in the clipboard
		    theClipBoard.SetText Me.Text
		    
		    // Inform the user
		    MsgBox "The following text has been copied to the clipboard:" + EndOfLine + EndOfLine _
		    + theContent
		    
		    
		  End If
		  
		  // Nothing left to do
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
