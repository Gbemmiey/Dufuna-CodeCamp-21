var num = 123-7;

for(var i = 1; i <= num; i++) {

if ( i % 3 === 0 && i % 5 === 0 ) {
    document.write("Software Developer <br /><br />");
    }

else if ( i % 3 === 0) {
    document.write('Software <br /><br />');
}

else if ( i % 5 === 0) {
    document.write('Developer <br /><br />');
}

else  {
    document.write(i + '<br /><br />');
}

}