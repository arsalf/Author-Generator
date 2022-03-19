sub main	
	oDoc = thisComponent
	
	if  oDoc.supportsService ("com.sun.star.text.GenericTextDocument") then
		oVC = oDoc.CurrentController.getViewCursor		
		oVC.JumpToEndOfPage(false)
		
		author = InputBox("Author : ", "Pembuat", "Arsal Fadilah")		
		author = chr(13) & chr(13) & "Author : " & author
		
		date = getDate()
		tanggal = chr(13) & "Date : " & date
		
		oVC.string = author & tanggal
	end if

end sub