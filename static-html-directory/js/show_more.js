function showmoreFunction(more_name,btn_name,img_name) {
    
    var moreText = document.getElementById(more_name);
    var btnText = document.getElementById(btn_name);
    var imgastro = document.getElementById(img_name);
    
    if (moreText.style.display === "inline") {
	btnText.innerHTML = "Leggi di più";
	moreText.style.display = "none";
	imgastro.style.display = "inline";
    }
    else {
	btnText.innerHTML = "Chiudi";
	btnText.style.marginBottom = "100px";
	moreText.style.display = "inline";
	imgastro.style.display = "none";
    }
}
