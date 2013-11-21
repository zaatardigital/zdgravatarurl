#tag Class
Protected Class zdGravatarURL
	#tag Method, Flags = &h21
		Private Function BuildURL(inEmailAddress As String) As String
		  
		  //-- Build the URL given the current setup
		  
		  // --- We build the parameters array ---
		  
		  Dim theParameters() As String
		  
		  // The size Parameter
		  If Me.pSize <> zdGravatarURL.kSizeDefault Then _
		  theParameters.Append zdGravatarURL.kParameterSize + Str( Me.psize )
		  
		  // The default image URL/type
		  If Me.pDefaultImage <> "" Then _
		  theParameters.Append zdGravatarURL.kParameterDefault + EncodeURLComponent( Me.pDefaultImage )
		  
		  // The rating parameter
		  If Me.pRating <> "" Then _
		  theParameters.Append zdGravatarURL.kParameterRating + EncodeURLComponent( Me.pRating )
		  
		  // The force default parameter
		  If Me.pForceDefault Then _
		  theParameters.Append zdGravatarURL.kParameterForceDefault
		  
		  // --- Build the URL ---
		  
		  Dim theResult() As String
		  
		  // Set the prefix
		  If Me.UseSSL Then
		    // Use Gravatar's SSL URL stub
		    theResult.Append zdGravatarURL.kURLStubSSL
		    
		  Else
		    // Use Gravatar HTTP URL stub
		    theResult.Append zdGravatarURL.kURLStub
		    
		  End If
		  
		  // Add the email address hash
		  theResult.Append Me.EmailAddressHash( inEmailAddress )
		  
		  // Adding the file-extension if requested
		  If Me.pUseJPGExtension Then _
		  theResult.Append zdGravatarURL.kJPGExtension
		  
		  // Adding the parameters if needed
		  If theParameters.Ubound > -1 Then _
		  theResult.Append zdGravatarURL.kParameterPrefix + Join( theParameters, zdGravatarURL.kParameterSeparator )
		  
		  // Assemble the URL parts and return the result
		  Return Join( theResult, "" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EmailAddressHash(inEmailAddress As String = "") As String
		  //-- Returns a MD5 hash hexadecimal string based on the inEmailAddress parameter.
		  
		  // Create a buffer string to process inEmailAddress.
		  Dim theEmailAddress As String
		  
		  // If There is no email adress, then it uses the zdGraavatarURL.EmailAddress property
		  // In the same time, the address is trimmed and lowercased.
		  If inEmailAddress <> "" Then
		    theEmailAddress = Lowercase( Trim( inEmailAddress ) )
		  Else
		    theEmailAddress = Lowercase( Trim( Me.EmailAddress ) )
		  End If
		  
		  // Create the MD5 hash as an hexadecimal string and return it
		  #if RBVersion < 2012.2 Then
		    
		    // Use the old MD5 function
		    Return zdGravatarURL.Hexify( MD5( theEmailAddress )
		    
		  #else
		    
		    // Use the Crypto module introduced with Real Studio 2012r2
		    Return zdGravatarURL.Hexify( Crypto.MD5( theEmailAddress ) )
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Hexify(inString As String) As string
		  
		  //-- Transform the bytes/octets of a String in an hexadecimal string
		  
		  // A few compiler optimizations
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  
		  // There are 16 unique digits in hexadecimal
		  Const kHexadecimalRadix = 16
		  
		  // Building the hexadecimal digits array
		  Dim theDigits() As String = Array( "0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f")
		  
		  // Creating an empty array of strings to handle the result
		  Dim theResult() As String
		  
		  // How many bytes are we handling?
		  Dim theCount As Integer = inString.LenB
		  
		  // Looping through all the bytes
		  For i As Integer = 1 to theCount
		    
		    // Retrieving the byte/octet to convert
		    Dim theByte As Integer = inString.MidB( i, 1 ).AscB
		    
		    // Extract the most significant nibble and add the digit to the result...
		    theResult.Append theDigits( theByte \ kHexadecimalRadix )
		    // Do the same for the less significant nibble
		    theResult.Append theDigits( theByte Mod kHexadecimalRadix )
		    
		  Next i
		  
		  // Join all the hexadecimal digits in a single string and return it
		  Return Join( theResult, "" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URL() As String
		  
		  // Rebuild the URL cache if needed
		  If Me.pIsDirty Then Me.pURLCache = Me.BuildURL( Me.pEmailAddress )
		  
		  // Return the avatar URL
		  Return Me.pURLCache
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URL(inEmailAddress As String) As String
		  
		  //-- Return the Gravatar URL for inEmailAddress _Without storing it_
		  
		  Return Me.BuildURL( inEmailAddress )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function VersionString() As String
		  
		  // Return the current version of zdGravatarURL
		  Return zdGravatarURL.kVersionString
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Licensing
		
		Copyright © 2012-2013, Eric de La Rochette. All Rights reserved.
		
		Permission is hereby granted, free of charge, to any person obtaining
		a copy of this software and associated documentation files (the
		"Software"), to deal in the Software without restriction, including
		without limitation the rights to use, copy, modify, merge, publish,
		distribute, sublicense, and/or sell copies of the Software, and to
		permit persons to whom the Software is furnished to do so, subject to
		the following conditions:
		
		The above copyright notice and this permission notice shall be included
		in all copies or substantial portions of the Software.
		
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
		OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
		MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
		IN NO EVENT SHALL THE ABOVE LISTED COPYRIGHT HOLDER(S) BE LIABLE FOR ANY
		CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
		TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
		SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
		
		Except as contained in this notice, the name(s) of the above copyright
		holders shall not be used in advertising or otherwise to promote the
		sale, use or other dealings in this Software without prior written
		authorization.
	#tag EndNote

	#tag Note, Name = Version History
		-- Version 1.3 (2013-11-08)
		
		[CHANGES]
		
		 - Moving to Xojo
		 - The code in zdGravatarURL.EmailAddressHash has been cleaned for better clarity
		 - The zdGravatarURL.kVersionString has been updated to 1.3.
		 - [DEMO] HTMLViewer.LoadURL() is now used to refresh the avatar display instead of HTMLViwer.LoadPage().
		 - [DEMO] The DemoWindow's constants linked to the use of HTMLViewer.LoadPage() have been removed.
		
		
		-- Version 1.2 (2013-02-12)
		
		[CHANGES]
		
		 - Moving to the X11 license.
		 - The documentation has been updated.
		 - The AboutWindow now allows the display of the license when clicking on the copyright label.
		
		
		-- Version 1.1 (2013-02-10)
		
		[NEW]
		
		 - zdGravatarURL.VersionString() As String
		This is a shared method that returns the current version number of the class as a string.
		
		 - zdGravatarURL.EmailAddressHash( inEmailAddress As String = "" ) As String
		It returns the hash for the passed email address.
		If inEmailAdress is empty it returns the hash for the EmailAddress property content.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return the default avatar type or URL
			  
			  Return Me.pDefaultImage
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the default image type or URL for the avatar
			  
			  // Do we really change the value?
			  If value <> Me.pDefaultImage then
			    
			    // Yes, change the value and set as dirty
			    Me.pDefaultImage = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		DefaultImage As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return the gravatar user's email address
			  
			  Return Me.pEmailAddress
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the Gravatar user's email address
			  
			  // Do we really change the value?
			  If value <> Me.EmailAddress Then
			    
			    // Yes, change the value and set as dirty
			    Me.pEmailAddress = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		EmailAddress As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return True if the force default option is used
			  
			  Return Me.pForceDefault
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the force default option
			  
			  // Do we really change the value?
			  If value <> Me.pForceDefault Then
			    
			    // Yes, change the value and set as dirty
			    Me.pForceDefault = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		ForceDefault As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private pDefaultImage As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pEmailAddress As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pForceDefault As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pIsDirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pRating As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pURLCache As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pUseHTTPS As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pUseJPGExtension As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return the rating
			  
			  Return Me.pRating
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the rating option
			  
			  // Do we really change the value?
			  If value <> Me.pRating Then
			    
			    // Yes, change the value and set as dirty
			    Me.pRating = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		Rating As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return the user selected size.
			  
			  Return Me.pSize
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the size of the avatar
			  // Before storing the value, we check if it's in the valid range of 1 to 2048
			  
			  // Are we in a valid range?
			  Dim theCleanValue As Integer
			  
			  If value <> zdGravatarURL.kSizeDefault Then
			    
			    // No Negative value
			    If value < 0 Then
			      theCleanValue = 0
			      
			    ElseIf value < zdGravatarURL.kSizeMinValue Then
			      theCleanValue = zdGravatarURL.kSizeMaxValue
			      
			    ElseIf value > zdGravatarURL.kSizeMinValue Then
			      theCleanValue = zdGravatarURL.kSizeMaxValue
			      
			    End If
			    
			  End If
			  
			  // Do we really change the value?
			  If value <> Me.pSize Then
			    
			    // Yes, change the value and set as dirty
			    Me.pSize = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		Size As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return True if the generated URL use the .jpg extension
			  
			  Return Me.pUseJPGExtension
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- Set the size of the avatar
			  
			  // Do we really change the value?
			  If value <> Me.pUseJPGExtension Then
			    
			    // Yes, change the value and set as dirty
			    Me.pUseJPGExtension = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		UseJPGExtension As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  //-- Return True if the Gravatar URL provided uses SSL
			  
			  Return Me.pUseHTTPS
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  //-- If True, then the avatar URL will be a secured URL.
			  
			  // Do we really change the value?
			  If value <> Me.pUseHTTPS Then
			    
			    // Yes, change the value and set as dirty
			    Me.pUseHTTPS = value
			    Me.pIsDirty = True
			    
			  End If
			  
			End Set
		#tag EndSetter
		UseSSL As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kDefaultGravatar, Type = String, Dynamic = False, Default = \"", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIcon404, Type = String, Dynamic = False, Default = \"404", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconBlank, Type = String, Dynamic = False, Default = \"blank", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconIdentIcon, Type = String, Dynamic = False, Default = \"identicon", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconMisteryMan, Type = String, Dynamic = False, Default = \"mm", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconMonsterID, Type = String, Dynamic = False, Default = \"monsterid", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconRetro, Type = String, Dynamic = False, Default = \"retro", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultIconWavatar, Type = String, Dynamic = False, Default = \"wavatar", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kJPGExtension, Type = String, Dynamic = False, Default = \".jpg", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterDefault, Type = String, Dynamic = False, Default = \"default\x3D", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterForceDefault, Type = String, Dynamic = False, Default = \"forcedefault\x3Dy", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterPrefix, Type = String, Dynamic = False, Default = \"\?", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterRating, Type = String, Dynamic = False, Default = \"rating\x3D", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterSeparator, Type = String, Dynamic = False, Default = \"&", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kParameterSize, Type = String, Dynamic = False, Default = \"size\x3D", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRatingG, Type = String, Dynamic = False, Default = \"g", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRatingPG, Type = String, Dynamic = False, Default = \"pg", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRatingR, Type = String, Dynamic = False, Default = \"r", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRatingX, Type = String, Dynamic = False, Default = \"x", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSizeDefault, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSizeMaxValue, Type = Double, Dynamic = False, Default = \"2048", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSizeMinValue, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kURLStub, Type = String, Dynamic = False, Default = \"http://www.gravatar.com/avatar/", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kURLStubSSL, Type = String, Dynamic = False, Default = \"https://secure.gravatar.com/avatar/", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kVersionString, Type = String, Dynamic = False, Default = \"1.3", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DefaultImage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmailAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForceDefault"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rating"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseJPGExtension"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseSSL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
