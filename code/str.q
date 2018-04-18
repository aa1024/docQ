/  
@desc String helper functions
@functions fc,sfl,zfl,tu,tl,tstr,cc,ucc,us (snakecase, startcase, traincase )
\

\d .str

/@function sc @desc Snakecase : underscore separated text , but the case is preserverd 
/   @param string 
/@returns underscore separated text without any case changes.
sc:{ ssr[x;" ";"_"] }

/@function tc @desc Traincase : hyphen separated text , but the case is preserverd 
/   @param string 
/@returns hyphen separated text without any case changes.
tc:{ ssr[x;" ";"-"] }

/@function us @desc Camel case to lower case underscore separated 
/   @param string in camel case form
/@returns underscore separated text
us:{lower sc[x]}

/@function cc @desc To camel case
/   @param String containing underscores, hyphens or spaces
/@returns Camel case string
cc:{ 
    x:trim ssr[;;" "]/[x;("-";"_")]; //replace hyphens and underscore
    x:?[-1=deltas s:" "=x; upper x;lower x ];  
    x where not[s]
 }

/@function ucc @desc Uncamelcase - Camel case to space separated text
/   @param String Camel case string
/@returns Space separated string
ucc:{ lower trim raze cut[0,where[x=upper[x]] ; x],\:" " }

/@function fc @desc Swap case
/   @param String
/@returns String with case swapped
fc:{?[x=lower x;upper x;lower x]}

/@function sfl @desc Space fill
/   @param int
/   @param String
/@returns String left padded with space
sfl:{neg[x]$string y}

/@function sfr @desc Space fill from right 
/   @param int
/   @param String
/@returns String right padded with space
sfr:{x$string y}

/@function sflb @desc Space fill from left for list of strings 
/   @param int
/   @param String
/@returns String left padded with space
sflb:{sfl[max count each string x] each x}

/@function sfrb @desc Space fill from right for list of strings 
/   @param int
/   @param String
/@returns String right padded with space
sfrb:{sfr[max count each string x] each x}


/@function zfl @desc zero fill
/   @param int
/   @param String
/@returns String left padded with zero
zfl:{"0"^neg[x]$string y}


/@function zfr @desc zero fill from right
/   @param int
/   @param String
/@returns String right padded with zero
zfr:{"0"^x$string y}


/@function tu @desc to upper
tu:upper

/@function tl @desc to lower
tl:lower

/@function tstr @desc to string
/Convert the nested structures to string using -3! 
tstr:{:$[10h=type x; x;0>type x;string x;-3!x]}