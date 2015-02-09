// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var counter=1;

function addopt()
{
	var op_name= "op" + counter;

	
var element=document.createElement("input");
element.setAttribute("type","text");
element.setAttribute("value","");
element.setAttribute("name","options[]");
element.setAttribute("id",op_name);
var breakelement=document.createElement("br");

var foo=document.getElementById("survey");
foo.appendChild(breakelement);
foo.appendChild(element);
counter +=1;
}

function verified()
{
	
	
	for (i = 1; i <counter; i++) {
		var op= "op"+ i;
	alert(document.getElementById(op).value);
	
	options_array.push(document.getElementById(op).value);
	}
	
}


function show_question()
{
	document.getElementById('show_question').style.display='block';
}

function list_user()
{
	document.getElementById('list_user').style.display='block';
}

